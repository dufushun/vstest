#include <curl/curl.h>

#include <boost/thread.hpp>
#include <boost/bind.hpp>

// CAF
#include "caf/all.hpp"
#include "caf/io/all.hpp"

#include "cpuminer_lib.h"
#include "stratum_actor.h"
#include "user_params.h"
#include "miner_actors.h"
#include "rrhash.h"
#include "util.h"

using namespace caf;


boost::shared_ptr<actor> g_master_actor;
boost::shared_ptr<actor> g_stratum_actor;


int get_num_processors() {
  return util::get_num_processors();
}

int get_state() {
  actor_system_config cfg;
  actor_system system{cfg};
  scoped_actor self{system};
  Global_state_info ret;
  self->request(*g_stratum_actor, std::chrono::seconds(5), get_info_atom::value).receive (
    [&](const Global_state_info &global_state_info){
      ret.state = global_state_info.state;
    },
    [&](error& err) {
      ret.state = -1;
    }
  );
  return ret.state;
}

char *get_token() {
  actor_system_config cfg;
  actor_system system{cfg};
  scoped_actor self{system};
  Global_state_info ret;
  self->request(*g_stratum_actor, std::chrono::seconds(5), get_info_atom::value).receive (
    [&](const Global_state_info &global_state_info){
      for (int i = 0; i < TOKEN_MAX_LEN; ++i) {
        ret.token[i] = global_state_info.token[i];
      }
    },
    [&](error& err) {
      memset(ret.token, 0, TOKEN_MAX_LEN);
    }
  );
  return ret.token;
}

// todo: get_rate

void caf_main(actor_system& system, const UserParams& user_params) {
  curl_global_init(CURL_GLOBAL_DEFAULT);

  scoped_actor self{system};
  g_master_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(miner_master)));
  g_stratum_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(stratum_handler, user_params, *g_master_actor)));
  self->send(*g_master_actor, stratum_actor_atom::value, *g_stratum_actor);
}

int start_miner_thread_func(int argc, char** argv) {
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);
  caf_main(system, *user_params);

  scoped_actor self{system};
  self->await_all_other_actors_done();

  delete user_params;
  curl_global_cleanup();
  rrhash_release();

  return 0;
}

int start_miner(int argc, char** argv) {
  boost::thread start_thread(boost::bind(start_miner_thread_func, argc, argv));
}

void stop_miner() {
  actor_system_config cfg;
  actor_system system{cfg};
  scoped_actor self{system};
  anon_send_exit(*g_master_actor, exit_reason::user_shutdown);
  anon_send_exit(*g_stratum_actor, exit_reason::user_shutdown);
  self->await_all_other_actors_done();
}


/*
actor master_actor;
actor stratum_actor;

void caf_main(actor_system& system, const UserParams& user_params) {
  curl_global_init(CURL_GLOBAL_DEFAULT);

  scoped_actor self{system};
  master_actor = self->spawn<detached>(miner_master);
  stratum_actor = self->spawn<detached>(stratum_handler, user_params, master_actor);
  self->send(master_actor, stratum_actor_atom::value, stratum_actor);
}

void start_miner_thread_func(int argc, char** argv) {
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);
  caf_main(system, *user_params);

  delete user_params;
}

int start_miner(int argc, char** argv) {
  boost::thread start_thread(boost::bind(start_miner_thread_func, argc, argv));
}

void stop_miner() {
  actor_system_config cfg;
  actor_system system{cfg};
  scoped_actor self{system};
  anon_send_exit(master_actor, exit_reason::user_shutdown);
  anon_send_exit(stratum_actor, exit_reason::user_shutdown);
  self->await_all_other_actors_done();

  curl_global_cleanup();
  rrhash_release();
}
*/
