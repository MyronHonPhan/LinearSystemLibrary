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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/myronphan/LinearSystemLibrary

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/myronphan/LinearSystemLibrary/out/build

# Include any dependencies generated for this target.
include CMakeFiles/AL.out.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AL.out.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AL.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AL.out.dir/flags.make

CMakeFiles/AL.out.dir/test.cpp.o: CMakeFiles/AL.out.dir/flags.make
CMakeFiles/AL.out.dir/test.cpp.o: ../../test.cpp
CMakeFiles/AL.out.dir/test.cpp.o: CMakeFiles/AL.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AL.out.dir/test.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AL.out.dir/test.cpp.o -MF CMakeFiles/AL.out.dir/test.cpp.o.d -o CMakeFiles/AL.out.dir/test.cpp.o -c /Users/myronphan/LinearSystemLibrary/test.cpp

CMakeFiles/AL.out.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AL.out.dir/test.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/myronphan/LinearSystemLibrary/test.cpp > CMakeFiles/AL.out.dir/test.cpp.i

CMakeFiles/AL.out.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AL.out.dir/test.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/myronphan/LinearSystemLibrary/test.cpp -o CMakeFiles/AL.out.dir/test.cpp.s

# Object files for target AL.out
AL_out_OBJECTS = \
"CMakeFiles/AL.out.dir/test.cpp.o"

# External object files for target AL.out
AL_out_EXTERNAL_OBJECTS =

AL.out: CMakeFiles/AL.out.dir/test.cpp.o
AL.out: CMakeFiles/AL.out.dir/build.make
AL.out: Adder/libadder.a
AL.out: CMakeFiles/AL.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AL.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AL.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AL.out.dir/build: AL.out
.PHONY : CMakeFiles/AL.out.dir/build

CMakeFiles/AL.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AL.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AL.out.dir/clean

CMakeFiles/AL.out.dir/depend:
	cd /Users/myronphan/LinearSystemLibrary/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/myronphan/LinearSystemLibrary /Users/myronphan/LinearSystemLibrary /Users/myronphan/LinearSystemLibrary/out/build /Users/myronphan/LinearSystemLibrary/out/build /Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles/AL.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AL.out.dir/depend

