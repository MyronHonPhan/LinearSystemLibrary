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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/myronphan/LinearSystemLibrary

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/myronphan/LinearSystemLibrary/out/build

# Include any dependencies generated for this target.
include external/glfw/examples/CMakeFiles/boing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/glfw/examples/CMakeFiles/boing.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glfw/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/examples/CMakeFiles/boing.dir/flags.make

external/glfw/examples/boing.app/Contents/Resources/glfw.icns: ../../external/glfw/examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content external/glfw/examples/boing.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/myronphan/LinearSystemLibrary/external/glfw/examples/glfw.icns external/glfw/examples/boing.app/Contents/Resources/glfw.icns

external/glfw/examples/CMakeFiles/boing.dir/boing.c.o: external/glfw/examples/CMakeFiles/boing.dir/flags.make
external/glfw/examples/CMakeFiles/boing.dir/boing.c.o: ../../external/glfw/examples/boing.c
external/glfw/examples/CMakeFiles/boing.dir/boing.c.o: external/glfw/examples/CMakeFiles/boing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw/examples/CMakeFiles/boing.dir/boing.c.o"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/glfw/examples/CMakeFiles/boing.dir/boing.c.o -MF CMakeFiles/boing.dir/boing.c.o.d -o CMakeFiles/boing.dir/boing.c.o -c /Users/myronphan/LinearSystemLibrary/external/glfw/examples/boing.c

external/glfw/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/myronphan/LinearSystemLibrary/external/glfw/examples/boing.c > CMakeFiles/boing.dir/boing.c.i

external/glfw/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/myronphan/LinearSystemLibrary/external/glfw/examples/boing.c -o CMakeFiles/boing.dir/boing.c.s

# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing.c.o"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

external/glfw/examples/boing.app/Contents/MacOS/boing: external/glfw/examples/CMakeFiles/boing.dir/boing.c.o
external/glfw/examples/boing.app/Contents/MacOS/boing: external/glfw/examples/CMakeFiles/boing.dir/build.make
external/glfw/examples/boing.app/Contents/MacOS/boing: external/glfw/src/libglfw3.a
external/glfw/examples/boing.app/Contents/MacOS/boing: external/glfw/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable boing.app/Contents/MacOS/boing"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/examples/CMakeFiles/boing.dir/build: external/glfw/examples/boing.app/Contents/MacOS/boing
external/glfw/examples/CMakeFiles/boing.dir/build: external/glfw/examples/boing.app/Contents/Resources/glfw.icns
.PHONY : external/glfw/examples/CMakeFiles/boing.dir/build

external/glfw/examples/CMakeFiles/boing.dir/clean:
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/boing.dir/cmake_clean.cmake
.PHONY : external/glfw/examples/CMakeFiles/boing.dir/clean

external/glfw/examples/CMakeFiles/boing.dir/depend:
	cd /Users/myronphan/LinearSystemLibrary/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/myronphan/LinearSystemLibrary /Users/myronphan/LinearSystemLibrary/external/glfw/examples /Users/myronphan/LinearSystemLibrary/out/build /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/examples/CMakeFiles/boing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/examples/CMakeFiles/boing.dir/depend

