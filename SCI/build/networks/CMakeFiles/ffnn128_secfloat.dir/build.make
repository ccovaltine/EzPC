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
include networks/CMakeFiles/ffnn128_secfloat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include networks/CMakeFiles/ffnn128_secfloat.dir/compiler_depend.make

# Include the progress variables for this target.
include networks/CMakeFiles/ffnn128_secfloat.dir/progress.make

# Include the compile flags for this target's objects.
include networks/CMakeFiles/ffnn128_secfloat.dir/flags.make

networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o: networks/CMakeFiles/ffnn128_secfloat.dir/flags.make
networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o: ../networks/main_ffnn128.cpp
networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o: networks/CMakeFiles/ffnn128_secfloat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o"
	cd /home/lyc/EzPC/SCI/build/networks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o -MF CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o.d -o CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o -c /home/lyc/EzPC/SCI/networks/main_ffnn128.cpp

networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.i"
	cd /home/lyc/EzPC/SCI/build/networks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyc/EzPC/SCI/networks/main_ffnn128.cpp > CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.i

networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.s"
	cd /home/lyc/EzPC/SCI/build/networks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyc/EzPC/SCI/networks/main_ffnn128.cpp -o CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.s

# Object files for target ffnn128_secfloat
ffnn128_secfloat_OBJECTS = \
"CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o"

# External object files for target ffnn128_secfloat
ffnn128_secfloat_EXTERNAL_OBJECTS =

bin/ffnn128_secfloat: networks/CMakeFiles/ffnn128_secfloat.dir/main_ffnn128.cpp.o
bin/ffnn128_secfloat: networks/CMakeFiles/ffnn128_secfloat.dir/build.make
bin/ffnn128_secfloat: lib/libSCI-SecfloatML.a
bin/ffnn128_secfloat: lib/libSCI-FloatingPoint.a
bin/ffnn128_secfloat: lib/libSCI-BuildingBlocks.a
bin/ffnn128_secfloat: lib/libSCI-Math.a
bin/ffnn128_secfloat: lib/libSCI-GC.a
bin/ffnn128_secfloat: lib/libSCI-LinearOT.a
bin/ffnn128_secfloat: lib/libSCI-OT.a
bin/ffnn128_secfloat: lib/libSCI-FloatingPoint.a
bin/ffnn128_secfloat: lib/libSCI-BuildingBlocks.a
bin/ffnn128_secfloat: lib/libSCI-Math.a
bin/ffnn128_secfloat: lib/libSCI-GC.a
bin/ffnn128_secfloat: lib/libSCI-LinearOT.a
bin/ffnn128_secfloat: lib/libSCI-OT.a
bin/ffnn128_secfloat: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
bin/ffnn128_secfloat: /usr/lib/x86_64-linux-gnu/libpthread.a
bin/ffnn128_secfloat: /usr/lib/x86_64-linux-gnu/libssl.so
bin/ffnn128_secfloat: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/ffnn128_secfloat: /usr/lib/x86_64-linux-gnu/libgmp.so
bin/ffnn128_secfloat: networks/CMakeFiles/ffnn128_secfloat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyc/EzPC/SCI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/ffnn128_secfloat"
	cd /home/lyc/EzPC/SCI/build/networks && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ffnn128_secfloat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
networks/CMakeFiles/ffnn128_secfloat.dir/build: bin/ffnn128_secfloat
.PHONY : networks/CMakeFiles/ffnn128_secfloat.dir/build

networks/CMakeFiles/ffnn128_secfloat.dir/clean:
	cd /home/lyc/EzPC/SCI/build/networks && $(CMAKE_COMMAND) -P CMakeFiles/ffnn128_secfloat.dir/cmake_clean.cmake
.PHONY : networks/CMakeFiles/ffnn128_secfloat.dir/clean

networks/CMakeFiles/ffnn128_secfloat.dir/depend:
	cd /home/lyc/EzPC/SCI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyc/EzPC/SCI /home/lyc/EzPC/SCI/networks /home/lyc/EzPC/SCI/build /home/lyc/EzPC/SCI/build/networks /home/lyc/EzPC/SCI/build/networks/CMakeFiles/ffnn128_secfloat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : networks/CMakeFiles/ffnn128_secfloat.dir/depend

