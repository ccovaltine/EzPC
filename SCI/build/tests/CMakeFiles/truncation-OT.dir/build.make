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
include tests/CMakeFiles/truncation-OT.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/truncation-OT.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/truncation-OT.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/truncation-OT.dir/flags.make

tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o: tests/CMakeFiles/truncation-OT.dir/flags.make
tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o: ../tests/test_ring_truncation.cpp
tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o: tests/CMakeFiles/truncation-OT.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o"
	cd /home/lyc/EzPC/SCI/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o -MF CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o.d -o CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o -c /home/lyc/EzPC/SCI/tests/test_ring_truncation.cpp

tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.i"
	cd /home/lyc/EzPC/SCI/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyc/EzPC/SCI/tests/test_ring_truncation.cpp > CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.i

tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.s"
	cd /home/lyc/EzPC/SCI/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyc/EzPC/SCI/tests/test_ring_truncation.cpp -o CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.s

# Object files for target truncation-OT
truncation__OT_OBJECTS = \
"CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o"

# External object files for target truncation-OT
truncation__OT_EXTERNAL_OBJECTS =

bin/truncation-OT: tests/CMakeFiles/truncation-OT.dir/test_ring_truncation.cpp.o
bin/truncation-OT: tests/CMakeFiles/truncation-OT.dir/build.make
bin/truncation-OT: lib/libSCI-OT.a
bin/truncation-OT: lib/libSCI-LinearOT.a
bin/truncation-OT: lib/libSCI-GC.a
bin/truncation-OT: lib/libSCI-Math.a
bin/truncation-OT: lib/libSCI-BuildingBlocks.a
bin/truncation-OT: lib/libSCI-FloatingPoint.a
bin/truncation-OT: lib/libSCI-OT.a
bin/truncation-OT: lib/libSCI-LinearOT.a
bin/truncation-OT: lib/libSCI-GC.a
bin/truncation-OT: lib/libSCI-Math.a
bin/truncation-OT: lib/libSCI-BuildingBlocks.a
bin/truncation-OT: lib/libSCI-FloatingPoint.a
bin/truncation-OT: /usr/lib/x86_64-linux-gnu/libssl.so
bin/truncation-OT: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/truncation-OT: /usr/lib/x86_64-linux-gnu/libgmp.so
bin/truncation-OT: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
bin/truncation-OT: /usr/lib/x86_64-linux-gnu/libpthread.a
bin/truncation-OT: tests/CMakeFiles/truncation-OT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/truncation-OT"
	cd /home/lyc/EzPC/SCI/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/truncation-OT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/truncation-OT.dir/build: bin/truncation-OT
.PHONY : tests/CMakeFiles/truncation-OT.dir/build

tests/CMakeFiles/truncation-OT.dir/clean:
	cd /home/lyc/EzPC/SCI/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/truncation-OT.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/truncation-OT.dir/clean

tests/CMakeFiles/truncation-OT.dir/depend:
	cd /home/lyc/EzPC/SCI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyc/EzPC/SCI /home/lyc/EzPC/SCI/tests /home/lyc/EzPC/SCI/build /home/lyc/EzPC/SCI/build/tests /home/lyc/EzPC/SCI/build/tests/CMakeFiles/truncation-OT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/truncation-OT.dir/depend

