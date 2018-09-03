#include <boost/shared_ptr.hpp>

#include "miner_actors.h"
#include "rrhash.h"
#include "util.h"
#include "stratum_actor.h"

class miner_worker_state {
public:
  actor stratum_actor;

  Job job;
  uint32_t start_nonce;
  uint32_t end_nonce;

  // temp vars for one hash call
  uint32_t *nonceptr;
  uint32_t n;
  uint32_t first_nonce;
  unsigned char target256[32];
  unsigned char hash[32];
  unsigned char hash_buf[32];

  bool scanhash_rr();
};

static void transfer_target_to_256bits(uint32_t target, unsigned char *target256) {
    target = util::swab32(target);
    int size = target >> 24;
    uint32_t word = target & 0x007fffff;

    if (size <= 3) {
        word >>= 8 * (3 - size);
        word = util::swab32(word);
        memcpy(target256 + 28, &word, 4);
    } else {
        int bits_of_left_shift = size - 3;
        word = util::swab32(word);
        memcpy(target256 + 28 - bits_of_left_shift, &word, 4);
    }
}

bool miner_worker_state::scanhash_rr() {
    *nonceptr = ++n;
    rrhash((char *)job.data, 88, hash);
    for (int j = 0; j < sizeof(hash); ++j) {
        hash_buf[sizeof(hash) - 1 - j] = hash[j];
    }
    bool found = false;
    for (int i = 0; i < sizeof(hash_buf); ++i) {
        if ((hash_buf[i]) > target256[i]) {
            found = false;
            break;
        } else if ((hash_buf[i]) < target256[i]) {
            found = true;
            break;
        }
    }
	return found;
}

behavior miner_worker(stateful_actor<miner_worker_state>* self) {
  return {
    [=](stratum_actor_atom, const actor &stratum_actor) {
      self->state.stratum_actor = stratum_actor;
    },
    [=](new_job_atom, const Job& new_job, uint32_t start_nonce, uint32_t end_nonce) {
      self->state.job = new_job;
      self->state.start_nonce = start_nonce;
      self->state.end_nonce = end_nonce;

      self->state.nonceptr = (uint32_t*) (((char*)self->state.job.data) + 84);
      *(self->state.nonceptr) = self->state.start_nonce;
      self->state.n = *(self->state.nonceptr) - 1;
      self->state.first_nonce = self->state.n + 1;
      memset(self->state.target256, 0, sizeof(self->state.target256));
      transfer_target_to_256bits(self->state.job.target[7], self->state.target256);

      memset(self->state.hash, 0, sizeof(self->state.hash));
      memset(self->state.hash_buf, 0, sizeof(self->state.hash_buf));

      // todo: remove existing messages
      //self->cleanup(); send_exit() ?
      //self->drop_current_message_id();
      self->send(self, next_hash_atom::value);
    },
    [=](next_hash_atom) {
      bool found_mine = self->state.scanhash_rr();
      if (found_mine && self->state.stratum_actor) {
        self->send(self->state.stratum_actor, submit_atom::value, self->state.job);
      }
      if (*(self->state.nonceptr) < self->state.end_nonce) { // todo: remove n and ues *nonceptr ?
        self->send(self, next_hash_atom::value);
      }
      // todo: printf speed

    }
  };
}

behavior miner_master(stateful_actor<miner_master_state>* self) {
  int actor_count = 8;
  for (int i = 0; i < actor_count; ++i) { // todo: user params, performance
    self->state.idle.push_back(self->spawn<detached+linked>(miner_worker)); // <detached+linked>
  }
  return {
    [=](stratum_actor_atom, const actor &stratum_actor) {
      for (int i = 0; i < self->state.idle.size(); ++i) {
          self->send(self->state.idle[i], stratum_actor_atom::value, stratum_actor);
      }
    },
    [=](new_job_atom, const Job& new_job) {
      printf("Received new job: %s.\n", new_job.data);
      fflush(stdout);
      int count = self->state.idle.size();
      for (int i = 0; i < count; ++i) {
        uint32_t start_nonce;
        uint32_t end_nonce;
        start_nonce = 0xffffffffU / actor_count * i + 1; // +1 is for not duplicate between two actors
        end_nonce = 0xffffffffU / actor_count * (i + 1);
        // handle bound for not losing any nonce
        if (i == 0) {
          start_nonce = 0x0U;
        } else if (i == count) {
          end_nonce = 0xffffffffU;
        }
        self->send(self->state.idle[i], new_job_atom::value, new_job, start_nonce, end_nonce);
      }
    }
  };
}
