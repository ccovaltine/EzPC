# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/lyc/EzPC/SCI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lyc/EzPC/SCI/build

# Include any dependencies generated for this target.
include src/Math/CMakeFiles/SCI-Math.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Math/CMakeFiles/SCI-Math.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Math/CMakeFiles/SCI-Math.dir/progress.make

# Include the compile flags for this target's objects.
include src/Math/CMakeFiles/SCI-Math.dir/flags.make

src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.o: src/Math/CMakeFiles/SCI-Math.dir/flags.make
src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.o: ../src/Math/math-functions.cpp
src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.o: src/Math/CMakeFiles/SCI-Math.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.o"
	cd /home/lyc/EzPC/SCI/build/src/Math && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.o -MF CMakeFiles/SCI-Math.dir/math-functions.cpp.o.d -o CMakeFiles/SCI-Math.dir/math-functions.cpp.o -c /home/lyc/EzPC/SCI/src/Math/math-functions.cpp

src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SCI-Math.dir/math-functions.cpp.i"
	cd /home/lyc/EzPC/SCI/build/src/Math && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyc/EzPC/SCI/src/Math/math-functions.cpp > CMakeFiles/SCI-Math.dir/math-functions.cpp.i

src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SCI-Math.dir/math-functions.cpp.s"
	cd /home/lyc/EzPC/SCI/build/src/Math && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyc/EzPC/SCI/src/Math/math-functions.cpp -o CMakeFiles/SCI-Math.dir/math-functions.cpp.s

# Object files for target SCI-Math
SCI__Math_OBJECTS = \
"CMakeFiles/SCI-Math.dir/math-functions.cpp.o"

# External object files for target SCI-Math
SCI__Math_EXTERNAL_OBJECTS =

lib/libSCI-Math.a: src/Math/CMakeFiles/SCI-Math.dir/math-functions.cpp.o
lib/libSCI-Math.a: src/Math/CMakeFiles/SCI-Math.dir/build.make
lib/libSCI-Math.a: src/Math/CMakeFiles/SCI-Math.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../lib/libSCI-Math.a"
	cd /home/lyc/EzPC/SCI/build/src/Math && $(CMAKE_COMMAND) -P CMakeFiles/SCI-Math.dir/cmake_clean_target.cmake
	cd /home/lyc/EzPC/SCI/build/src/Math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SCI-Math.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Math/CMakeFiles/SCI-Math.dir/build: lib/libSCI-Math.a
.PHONY : src/Math/CMakeFiles/SCI-Math.dir/build

src/Math/CMakeFiles/SCI-Math.dir/clean:
	cd /home/lyc/EzPC/SCI/build/src/Math && $(CMAKE_COMMAND) -P CMakeFiles/SCI-Math.dir/cmake_clean.cmake
.PHONY : src/Math/CMakeFiles/SCI-Math.dir/clean

src/Math/CMakeFiles/SCI-Math.dir/depend:
	cd /home/lyc/EzPC/SCI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyc/EzPC/SCI /home/lyc/EzPC/SCI/src/Math /home/lyc/EzPC/SCI/build /home/lyc/EzPC/SCI/build/src/Math /home/lyc/EzPC/SCI/build/src/Math/CMakeFiles/SCI-Math.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Math/CMakeFiles/SCI-Math.dir/depend
