# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thef/Desktop/cppPro/sfml_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thef/Desktop/cppPro/sfml_test/build

# Include any dependencies generated for this target.
include CMakeFiles/sfml_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sfml_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sfml_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sfml_test.dir/flags.make

CMakeFiles/sfml_test.dir/main.cpp.o: CMakeFiles/sfml_test.dir/flags.make
CMakeFiles/sfml_test.dir/main.cpp.o: /home/thef/Desktop/cppPro/sfml_test/main.cpp
CMakeFiles/sfml_test.dir/main.cpp.o: CMakeFiles/sfml_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thef/Desktop/cppPro/sfml_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sfml_test.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml_test.dir/main.cpp.o -MF CMakeFiles/sfml_test.dir/main.cpp.o.d -o CMakeFiles/sfml_test.dir/main.cpp.o -c /home/thef/Desktop/cppPro/sfml_test/main.cpp

CMakeFiles/sfml_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml_test.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thef/Desktop/cppPro/sfml_test/main.cpp > CMakeFiles/sfml_test.dir/main.cpp.i

CMakeFiles/sfml_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml_test.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thef/Desktop/cppPro/sfml_test/main.cpp -o CMakeFiles/sfml_test.dir/main.cpp.s

CMakeFiles/sfml_test.dir/src/Hero.cpp.o: CMakeFiles/sfml_test.dir/flags.make
CMakeFiles/sfml_test.dir/src/Hero.cpp.o: /home/thef/Desktop/cppPro/sfml_test/src/Hero.cpp
CMakeFiles/sfml_test.dir/src/Hero.cpp.o: CMakeFiles/sfml_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thef/Desktop/cppPro/sfml_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sfml_test.dir/src/Hero.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml_test.dir/src/Hero.cpp.o -MF CMakeFiles/sfml_test.dir/src/Hero.cpp.o.d -o CMakeFiles/sfml_test.dir/src/Hero.cpp.o -c /home/thef/Desktop/cppPro/sfml_test/src/Hero.cpp

CMakeFiles/sfml_test.dir/src/Hero.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml_test.dir/src/Hero.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thef/Desktop/cppPro/sfml_test/src/Hero.cpp > CMakeFiles/sfml_test.dir/src/Hero.cpp.i

CMakeFiles/sfml_test.dir/src/Hero.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml_test.dir/src/Hero.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thef/Desktop/cppPro/sfml_test/src/Hero.cpp -o CMakeFiles/sfml_test.dir/src/Hero.cpp.s

CMakeFiles/sfml_test.dir/src/Enemy.cpp.o: CMakeFiles/sfml_test.dir/flags.make
CMakeFiles/sfml_test.dir/src/Enemy.cpp.o: /home/thef/Desktop/cppPro/sfml_test/src/Enemy.cpp
CMakeFiles/sfml_test.dir/src/Enemy.cpp.o: CMakeFiles/sfml_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thef/Desktop/cppPro/sfml_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sfml_test.dir/src/Enemy.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml_test.dir/src/Enemy.cpp.o -MF CMakeFiles/sfml_test.dir/src/Enemy.cpp.o.d -o CMakeFiles/sfml_test.dir/src/Enemy.cpp.o -c /home/thef/Desktop/cppPro/sfml_test/src/Enemy.cpp

CMakeFiles/sfml_test.dir/src/Enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml_test.dir/src/Enemy.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thef/Desktop/cppPro/sfml_test/src/Enemy.cpp > CMakeFiles/sfml_test.dir/src/Enemy.cpp.i

CMakeFiles/sfml_test.dir/src/Enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml_test.dir/src/Enemy.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thef/Desktop/cppPro/sfml_test/src/Enemy.cpp -o CMakeFiles/sfml_test.dir/src/Enemy.cpp.s

CMakeFiles/sfml_test.dir/src/Rocket.cpp.o: CMakeFiles/sfml_test.dir/flags.make
CMakeFiles/sfml_test.dir/src/Rocket.cpp.o: /home/thef/Desktop/cppPro/sfml_test/src/Rocket.cpp
CMakeFiles/sfml_test.dir/src/Rocket.cpp.o: CMakeFiles/sfml_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thef/Desktop/cppPro/sfml_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sfml_test.dir/src/Rocket.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sfml_test.dir/src/Rocket.cpp.o -MF CMakeFiles/sfml_test.dir/src/Rocket.cpp.o.d -o CMakeFiles/sfml_test.dir/src/Rocket.cpp.o -c /home/thef/Desktop/cppPro/sfml_test/src/Rocket.cpp

CMakeFiles/sfml_test.dir/src/Rocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml_test.dir/src/Rocket.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thef/Desktop/cppPro/sfml_test/src/Rocket.cpp > CMakeFiles/sfml_test.dir/src/Rocket.cpp.i

CMakeFiles/sfml_test.dir/src/Rocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml_test.dir/src/Rocket.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thef/Desktop/cppPro/sfml_test/src/Rocket.cpp -o CMakeFiles/sfml_test.dir/src/Rocket.cpp.s

# Object files for target sfml_test
sfml_test_OBJECTS = \
"CMakeFiles/sfml_test.dir/main.cpp.o" \
"CMakeFiles/sfml_test.dir/src/Hero.cpp.o" \
"CMakeFiles/sfml_test.dir/src/Enemy.cpp.o" \
"CMakeFiles/sfml_test.dir/src/Rocket.cpp.o"

# External object files for target sfml_test
sfml_test_EXTERNAL_OBJECTS =

sfml_test: CMakeFiles/sfml_test.dir/main.cpp.o
sfml_test: CMakeFiles/sfml_test.dir/src/Hero.cpp.o
sfml_test: CMakeFiles/sfml_test.dir/src/Enemy.cpp.o
sfml_test: CMakeFiles/sfml_test.dir/src/Rocket.cpp.o
sfml_test: CMakeFiles/sfml_test.dir/build.make
sfml_test: /usr/lib/libsfml-graphics.so.2.5.1
sfml_test: /usr/lib/libsfml-audio.so.2.5.1
sfml_test: /usr/lib/libsfml-window.so.2.5.1
sfml_test: /usr/lib/libsfml-system.so.2.5.1
sfml_test: CMakeFiles/sfml_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thef/Desktop/cppPro/sfml_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable sfml_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sfml_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sfml_test.dir/build: sfml_test
.PHONY : CMakeFiles/sfml_test.dir/build

CMakeFiles/sfml_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sfml_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sfml_test.dir/clean

CMakeFiles/sfml_test.dir/depend:
	cd /home/thef/Desktop/cppPro/sfml_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thef/Desktop/cppPro/sfml_test /home/thef/Desktop/cppPro/sfml_test /home/thef/Desktop/cppPro/sfml_test/build /home/thef/Desktop/cppPro/sfml_test/build /home/thef/Desktop/cppPro/sfml_test/build/CMakeFiles/sfml_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sfml_test.dir/depend
