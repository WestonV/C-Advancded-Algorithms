# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/weston/Desktop/Clion/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/weston/Desktop/Clion/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/weston/Desktop/CS3050/ProgrammingAssignment1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CS3050.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CS3050.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CS3050.dir/flags.make

CMakeFiles/CS3050.dir/main.cpp.o: CMakeFiles/CS3050.dir/flags.make
CMakeFiles/CS3050.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CS3050.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS3050.dir/main.cpp.o -c /home/weston/Desktop/CS3050/ProgrammingAssignment1/main.cpp

CMakeFiles/CS3050.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS3050.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/weston/Desktop/CS3050/ProgrammingAssignment1/main.cpp > CMakeFiles/CS3050.dir/main.cpp.i

CMakeFiles/CS3050.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS3050.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/weston/Desktop/CS3050/ProgrammingAssignment1/main.cpp -o CMakeFiles/CS3050.dir/main.cpp.s

CMakeFiles/CS3050.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/CS3050.dir/main.cpp.o.requires

CMakeFiles/CS3050.dir/main.cpp.o.provides: CMakeFiles/CS3050.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CS3050.dir/build.make CMakeFiles/CS3050.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/CS3050.dir/main.cpp.o.provides

CMakeFiles/CS3050.dir/main.cpp.o.provides.build: CMakeFiles/CS3050.dir/main.cpp.o


# Object files for target CS3050
CS3050_OBJECTS = \
"CMakeFiles/CS3050.dir/main.cpp.o"

# External object files for target CS3050
CS3050_EXTERNAL_OBJECTS =

CS3050: CMakeFiles/CS3050.dir/main.cpp.o
CS3050: CMakeFiles/CS3050.dir/build.make
CS3050: CMakeFiles/CS3050.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CS3050"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CS3050.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CS3050.dir/build: CS3050

.PHONY : CMakeFiles/CS3050.dir/build

CMakeFiles/CS3050.dir/requires: CMakeFiles/CS3050.dir/main.cpp.o.requires

.PHONY : CMakeFiles/CS3050.dir/requires

CMakeFiles/CS3050.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CS3050.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CS3050.dir/clean

CMakeFiles/CS3050.dir/depend:
	cd /home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/weston/Desktop/CS3050/ProgrammingAssignment1 /home/weston/Desktop/CS3050/ProgrammingAssignment1 /home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug /home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug /home/weston/Desktop/CS3050/ProgrammingAssignment1/cmake-build-debug/CMakeFiles/CS3050.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CS3050.dir/depend
