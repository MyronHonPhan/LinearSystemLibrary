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
include external/glfw/tests/CMakeFiles/opacity.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/glfw/tests/CMakeFiles/opacity.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glfw/tests/CMakeFiles/opacity.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/tests/CMakeFiles/opacity.dir/flags.make

external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.o: external/glfw/tests/CMakeFiles/opacity.dir/flags.make
external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.o: ../../external/glfw/tests/opacity.c
external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.o: external/glfw/tests/CMakeFiles/opacity.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.o"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.o -MF CMakeFiles/opacity.dir/opacity.c.o.d -o CMakeFiles/opacity.dir/opacity.c.o -c /Users/myronphan/LinearSystemLibrary/external/glfw/tests/opacity.c

external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opacity.dir/opacity.c.i"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/myronphan/LinearSystemLibrary/external/glfw/tests/opacity.c > CMakeFiles/opacity.dir/opacity.c.i

external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opacity.dir/opacity.c.s"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/myronphan/LinearSystemLibrary/external/glfw/tests/opacity.c -o CMakeFiles/opacity.dir/opacity.c.s

external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o: external/glfw/tests/CMakeFiles/opacity.dir/flags.make
external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o: ../../external/glfw/deps/glad_gl.c
external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o: external/glfw/tests/CMakeFiles/opacity.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o -MF CMakeFiles/opacity.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/opacity.dir/__/deps/glad_gl.c.o -c /Users/myronphan/LinearSystemLibrary/external/glfw/deps/glad_gl.c

external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opacity.dir/__/deps/glad_gl.c.i"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/myronphan/LinearSystemLibrary/external/glfw/deps/glad_gl.c > CMakeFiles/opacity.dir/__/deps/glad_gl.c.i

external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opacity.dir/__/deps/glad_gl.c.s"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/myronphan/LinearSystemLibrary/external/glfw/deps/glad_gl.c -o CMakeFiles/opacity.dir/__/deps/glad_gl.c.s

# Object files for target opacity
opacity_OBJECTS = \
"CMakeFiles/opacity.dir/opacity.c.o" \
"CMakeFiles/opacity.dir/__/deps/glad_gl.c.o"

# External object files for target opacity
opacity_EXTERNAL_OBJECTS =

external/glfw/tests/opacity.app/Contents/MacOS/opacity: external/glfw/tests/CMakeFiles/opacity.dir/opacity.c.o
external/glfw/tests/opacity.app/Contents/MacOS/opacity: external/glfw/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o
external/glfw/tests/opacity.app/Contents/MacOS/opacity: external/glfw/tests/CMakeFiles/opacity.dir/build.make
external/glfw/tests/opacity.app/Contents/MacOS/opacity: external/glfw/src/libglfw3.a
external/glfw/tests/opacity.app/Contents/MacOS/opacity: external/glfw/tests/CMakeFiles/opacity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/myronphan/LinearSystemLibrary/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable opacity.app/Contents/MacOS/opacity"
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opacity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/tests/CMakeFiles/opacity.dir/build: external/glfw/tests/opacity.app/Contents/MacOS/opacity
.PHONY : external/glfw/tests/CMakeFiles/opacity.dir/build

external/glfw/tests/CMakeFiles/opacity.dir/clean:
	cd /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/opacity.dir/cmake_clean.cmake
.PHONY : external/glfw/tests/CMakeFiles/opacity.dir/clean

external/glfw/tests/CMakeFiles/opacity.dir/depend:
	cd /Users/myronphan/LinearSystemLibrary/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/myronphan/LinearSystemLibrary /Users/myronphan/LinearSystemLibrary/external/glfw/tests /Users/myronphan/LinearSystemLibrary/out/build /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests /Users/myronphan/LinearSystemLibrary/out/build/external/glfw/tests/CMakeFiles/opacity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/tests/CMakeFiles/opacity.dir/depend

