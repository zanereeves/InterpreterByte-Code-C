# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zanereeves/CLionProjects/InterpreterByte-Code-C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/InterpreterByte-Code-C.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/InterpreterByte-Code-C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/InterpreterByte-Code-C.dir/flags.make

CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/library.c
CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/library.c

CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/library.c > CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/library.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/chunk.c
CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/chunk.c

CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/chunk.c > CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/chunk.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/memory.c
CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/memory.c

CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/memory.c > CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/memory.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/debug.c
CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/debug.c

CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/debug.c > CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/debug.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/value.c
CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/value.c

CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/value.c > CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/value.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/vm.c
CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/vm.c

CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/vm.c > CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/vm.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/compiler.c
CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/compiler.c

CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/compiler.c > CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/compiler.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/scanner.c
CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/scanner.c

CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/scanner.c > CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/scanner.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/object.c
CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/object.c

CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/object.c > CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/object.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.s

CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o: CMakeFiles/InterpreterByte-Code-C.dir/flags.make
CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o: /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/table.c
CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o: CMakeFiles/InterpreterByte-Code-C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o -MF CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o.d -o CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o -c /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/table.c

CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/table.c > CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.i

CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/source/table.c -o CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.s

# Object files for target InterpreterByte-Code-C
InterpreterByte__Code__C_OBJECTS = \
"CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o" \
"CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o"

# External object files for target InterpreterByte-Code-C
InterpreterByte__Code__C_EXTERNAL_OBJECTS =

libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/library.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/chunk.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/memory.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/debug.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/value.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/vm.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/compiler.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/scanner.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/object.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/source/table.c.o
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/build.make
libInterpreterByte-Code-C.dylib: CMakeFiles/InterpreterByte-Code-C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C shared library libInterpreterByte-Code-C.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/InterpreterByte-Code-C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/InterpreterByte-Code-C.dir/build: libInterpreterByte-Code-C.dylib
.PHONY : CMakeFiles/InterpreterByte-Code-C.dir/build

CMakeFiles/InterpreterByte-Code-C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/InterpreterByte-Code-C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/InterpreterByte-Code-C.dir/clean

CMakeFiles/InterpreterByte-Code-C.dir/depend:
	cd /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zanereeves/CLionProjects/InterpreterByte-Code-C /Users/zanereeves/CLionProjects/InterpreterByte-Code-C /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug /Users/zanereeves/CLionProjects/InterpreterByte-Code-C/cmake-build-debug/CMakeFiles/InterpreterByte-Code-C.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/InterpreterByte-Code-C.dir/depend

