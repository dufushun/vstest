# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.11.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.11.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sunshilin/code/test/test_actor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sunshilin/code/test/test_actor

# Include any dependencies generated for this target.
include CMakeFiles/cpuminer_rr.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpuminer_rr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpuminer_rr.dir/flags.make

CMakeFiles/cpuminer_rr.dir/main.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpuminer_rr.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/main.cpp.o -c /Users/sunshilin/code/test/test_actor/main.cpp

CMakeFiles/cpuminer_rr.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/main.cpp > CMakeFiles/cpuminer_rr.dir/main.cpp.i

CMakeFiles/cpuminer_rr.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/main.cpp -o CMakeFiles/cpuminer_rr.dir/main.cpp.s

CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.o: src/stratum_actor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.o -c /Users/sunshilin/code/test/test_actor/src/stratum_actor.cpp

CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/src/stratum_actor.cpp > CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.i

CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/src/stratum_actor.cpp -o CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.s

CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.o: src/user_params.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.o -c /Users/sunshilin/code/test/test_actor/src/user_params.cpp

CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/src/user_params.cpp > CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.i

CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/src/user_params.cpp -o CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.s

CMakeFiles/cpuminer_rr.dir/src/util.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/src/util.cpp.o: src/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cpuminer_rr.dir/src/util.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/src/util.cpp.o -c /Users/sunshilin/code/test/test_actor/src/util.cpp

CMakeFiles/cpuminer_rr.dir/src/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/src/util.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/src/util.cpp > CMakeFiles/cpuminer_rr.dir/src/util.cpp.i

CMakeFiles/cpuminer_rr.dir/src/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/src/util.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/src/util.cpp -o CMakeFiles/cpuminer_rr.dir/src/util.cpp.s

CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.o: src/miner_actors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.o -c /Users/sunshilin/code/test/test_actor/src/miner_actors.cpp

CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/src/miner_actors.cpp > CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.i

CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/src/miner_actors.cpp -o CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.s

CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.o: src/stratum_json.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.o -c /Users/sunshilin/code/test/test_actor/src/stratum_json.cpp

CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/src/stratum_json.cpp > CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.i

CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/src/stratum_json.cpp -o CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.s

CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.o: CMakeFiles/cpuminer_rr.dir/flags.make
CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.o: src/rrhash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.o -c /Users/sunshilin/code/test/test_actor/src/rrhash.cpp

CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sunshilin/code/test/test_actor/src/rrhash.cpp > CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.i

CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sunshilin/code/test/test_actor/src/rrhash.cpp -o CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.s

# Object files for target cpuminer_rr
cpuminer_rr_OBJECTS = \
"CMakeFiles/cpuminer_rr.dir/main.cpp.o" \
"CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.o" \
"CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.o" \
"CMakeFiles/cpuminer_rr.dir/src/util.cpp.o" \
"CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.o" \
"CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.o" \
"CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.o"

# External object files for target cpuminer_rr
cpuminer_rr_EXTERNAL_OBJECTS =

cpuminer_rr: CMakeFiles/cpuminer_rr.dir/main.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/src/stratum_actor.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/src/user_params.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/src/util.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/src/miner_actors.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/src/stratum_json.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/src/rrhash.cpp.o
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/build.make
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libcurld.a
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libjanssond.a
cpuminer_rr: lib/libcaf_core.dylib
cpuminer_rr: lib/libcaf_io.dylib
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libboost_thread-mt-d.a
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libboost_system-mt-d.a
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libssl.a
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libcrypto.a
cpuminer_rr: /Users/sunshilin/.hunter/_Base/dbe5b1c/f9a5d40/798f754/Install/lib/libzd.a
cpuminer_rr: CMakeFiles/cpuminer_rr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sunshilin/code/test/test_actor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable cpuminer_rr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpuminer_rr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpuminer_rr.dir/build: cpuminer_rr

.PHONY : CMakeFiles/cpuminer_rr.dir/build

CMakeFiles/cpuminer_rr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpuminer_rr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpuminer_rr.dir/clean

CMakeFiles/cpuminer_rr.dir/depend:
	cd /Users/sunshilin/code/test/test_actor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sunshilin/code/test/test_actor /Users/sunshilin/code/test/test_actor /Users/sunshilin/code/test/test_actor /Users/sunshilin/code/test/test_actor /Users/sunshilin/code/test/test_actor/CMakeFiles/cpuminer_rr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpuminer_rr.dir/depend

