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
include tests/CMakeFiles/fc-HE.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/fc-HE.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/fc-HE.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/fc-HE.dir/flags.make

tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.o: tests/CMakeFiles/fc-HE.dir/flags.make
tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.o: ../tests/test_field_fc.cpp
tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.o: tests/CMakeFiles/fc-HE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.o"
	cd /home/lyc/EzPC/SCI/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.o -MF CMakeFiles/fc-HE.dir/test_field_fc.cpp.o.d -o CMakeFiles/fc-HE.dir/test_field_fc.cpp.o -c /home/lyc/EzPC/SCI/tests/test_field_fc.cpp

tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fc-HE.dir/test_field_fc.cpp.i"
	cd /home/lyc/EzPC/SCI/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyc/EzPC/SCI/tests/test_field_fc.cpp > CMakeFiles/fc-HE.dir/test_field_fc.cpp.i

tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fc-HE.dir/test_field_fc.cpp.s"
	cd /home/lyc/EzPC/SCI/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyc/EzPC/SCI/tests/test_field_fc.cpp -o CMakeFiles/fc-HE.dir/test_field_fc.cpp.s

# Object files for target fc-HE
fc__HE_OBJECTS = \
"CMakeFiles/fc-HE.dir/test_field_fc.cpp.o"

# External object files for target fc-HE
fc__HE_EXTERNAL_OBJECTS =

bin/fc-HE: tests/CMakeFiles/fc-HE.dir/test_field_fc.cpp.o
bin/fc-HE: tests/CMakeFiles/fc-HE.dir/build.make
bin/fc-HE: lib/libSCI-HE.a
bin/fc-HE: lib/libSCI-LinearHE.a
bin/fc-HE: /usr/lib/x86_64-linux-gnu/libssl.so
bin/fc-HE: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/fc-HE: /usr/lib/x86_64-linux-gnu/libgmp.so
bin/fc-HE: lib/libseal.a
bin/fc-HE: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
bin/fc-HE: /usr/lib/x86_64-linux-gnu/libpthread.a
bin/fc-HE: tests/CMakeFiles/fc-HE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/fc-HE"
	cd /home/lyc/EzPC/SCI/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fc-HE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/fc-HE.dir/build: bin/fc-HE
.PHONY : tests/CMakeFiles/fc-HE.dir/build

tests/CMakeFiles/fc-HE.dir/clean:
	cd /home/lyc/EzPC/SCI/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/fc-HE.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/fc-HE.dir/clean

tests/CMakeFiles/fc-HE.dir/depend:
	cd /home/lyc/EzPC/SCI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyc/EzPC/SCI /home/lyc/EzPC/SCI/tests /home/lyc/EzPC/SCI/build /home/lyc/EzPC/SCI/build/tests /home/lyc/EzPC/SCI/build/tests/CMakeFiles/fc-HE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/fc-HE.dir/depend

