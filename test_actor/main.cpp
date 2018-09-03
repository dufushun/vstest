// C includes
//#include <ctime>
//#include <csignal>
//#include <cstdlib>

#include <curl/curl.h>
//#include <netinet/in.h>
//#include <netinet/tcp.h>

// C++ includes
//#include <string>
//#include <vector>
//#include <random>
//#include <iostream>
#include <boost/shared_ptr.hpp>
#include <boost/enable_shared_from_this.hpp>

#include <boost/thread.hpp>
#include <boost/bind.hpp>

// CAF
#include "caf/all.hpp"
#include "caf/io/all.hpp"

#include "stratum_actor.h"
#include "user_params.h"
#include "miner_actors.h"
#include "rrhash.h"

using namespace caf;

/*
boost::shared_ptr<actor> g_master_actor;
boost::shared_ptr<actor> g_stratum_actor;

void caf_main(actor_system& system, const UserParams& user_params) {
  curl_global_init(CURL_GLOBAL_DEFAULT);

  scoped_actor self{system};
  g_master_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(miner_master)));
  g_stratum_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(stratum_handler, user_params, *g_master_actor)));
  self->send(*g_master_actor, stratum_actor_atom::value, *g_stratum_actor);
}

int start_miner_2(int argc, char** argv) {
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);

  curl_global_init(CURL_GLOBAL_DEFAULT);

  scoped_actor self{system};
  g_master_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(miner_master)));
  g_stratum_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(stratum_handler, *user_params, *g_master_actor)));
  self->send(*g_master_actor, stratum_actor_atom::value, *g_stratum_actor);

  delete user_params;

  return 0;
}

int start_miner(int argc, char** argv) {
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);
  //::caf::exec_main<io::middleman>(caf_main, argc, argv);
  caf_main(system, *user_params);

  scoped_actor self{system};
  self->await_all_other_actors_done();

  delete user_params;
  curl_global_cleanup();
  rrhash_release();

  return 0;
}

void stop_miner() {
  actor_system_config cfg;
  actor_system system{cfg};
  scoped_actor self{system};
  anon_send_exit(*g_master_actor, exit_reason::user_shutdown);
  anon_send_exit(*g_stratum_actor, exit_reason::user_shutdown);
  self->await_all_other_actors_done();
}

int main(int argc, char** argv) {
/*
  // extract start_miner
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);
  //::caf::exec_main<io::middleman>(caf_main, argc, argv);
  caf_main(system, *user_params);

  delete user_params;
*/

/*  
  // extract start_miner_2
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);

  curl_global_init(CURL_GLOBAL_DEFAULT);

  scoped_actor self{system};
  g_master_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(miner_master)));
  g_stratum_actor = boost::shared_ptr<actor>(new actor(self->spawn<detached>(stratum_handler, *user_params, *g_master_actor)));
  self->send(*g_master_actor, stratum_actor_atom::value, *g_stratum_actor);

  delete user_params;
*/
/*
  boost::thread start_thread(boost::bind(start_miner, argc, argv));
  //start_miner(argc, argv);
  printf("\n\n Running \n\n");
  sleep(20);
  stop_miner();
  printf("\n\n Stopped \n\n");
  //sleep(10);
  boost::thread start_thread2(boost::bind(start_miner, argc, argv));
  printf("\n\n Running \n\n");
  sleep(20);
}
*/


void caf_main(actor_system& system, const UserParams& user_params) {
  curl_global_init(CURL_GLOBAL_DEFAULT);

  scoped_actor self{system};
  auto master_actor = self->spawn<detached>(miner_master);
  actor stratum_actor = self->spawn<detached>(stratum_handler, user_params, master_actor);
  self->send(master_actor, stratum_actor_atom::value, stratum_actor);

  self->await_all_other_actors_done();

  curl_global_cleanup();
}

int main(int argc, char** argv) {
  rrhash_init();

  actor_system_config cfg;
  actor_system system{cfg};
  UserParams* user_params = new UserParams();
  user_params->parse_cmdline(argc, argv);
  caf_main(system, *user_params);

  delete user_params;
  rrhash_release();

  return 0;
}
