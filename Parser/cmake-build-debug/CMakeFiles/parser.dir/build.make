# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/johndemirci/Downloads/UmitDemirciLab6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/parser.dir/flags.make

CMakeFiles/parser.dir/src/main.c.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/parser.dir/src/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/parser.dir/src/main.c.o   -c /Users/johndemirci/Downloads/UmitDemirciLab6/src/main.c

CMakeFiles/parser.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parser.dir/src/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johndemirci/Downloads/UmitDemirciLab6/src/main.c > CMakeFiles/parser.dir/src/main.c.i

CMakeFiles/parser.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parser.dir/src/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johndemirci/Downloads/UmitDemirciLab6/src/main.c -o CMakeFiles/parser.dir/src/main.c.s

CMakeFiles/parser.dir/src/parser.c.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/parser.c.o: ../src/parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/parser.dir/src/parser.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/parser.dir/src/parser.c.o   -c /Users/johndemirci/Downloads/UmitDemirciLab6/src/parser.c

CMakeFiles/parser.dir/src/parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parser.dir/src/parser.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johndemirci/Downloads/UmitDemirciLab6/src/parser.c > CMakeFiles/parser.dir/src/parser.c.i

CMakeFiles/parser.dir/src/parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parser.dir/src/parser.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johndemirci/Downloads/UmitDemirciLab6/src/parser.c -o CMakeFiles/parser.dir/src/parser.c.s

CMakeFiles/parser.dir/src/eval.c.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/eval.c.o: ../src/eval.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/parser.dir/src/eval.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/parser.dir/src/eval.c.o   -c /Users/johndemirci/Downloads/UmitDemirciLab6/src/eval.c

CMakeFiles/parser.dir/src/eval.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parser.dir/src/eval.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johndemirci/Downloads/UmitDemirciLab6/src/eval.c > CMakeFiles/parser.dir/src/eval.c.i

CMakeFiles/parser.dir/src/eval.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parser.dir/src/eval.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johndemirci/Downloads/UmitDemirciLab6/src/eval.c -o CMakeFiles/parser.dir/src/eval.c.s

CMakeFiles/parser.dir/src/scanner_ad_hoc.c.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/scanner_ad_hoc.c.o: ../src/scanner_ad_hoc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/parser.dir/src/scanner_ad_hoc.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/parser.dir/src/scanner_ad_hoc.c.o   -c /Users/johndemirci/Downloads/UmitDemirciLab6/src/scanner_ad_hoc.c

CMakeFiles/parser.dir/src/scanner_ad_hoc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parser.dir/src/scanner_ad_hoc.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johndemirci/Downloads/UmitDemirciLab6/src/scanner_ad_hoc.c > CMakeFiles/parser.dir/src/scanner_ad_hoc.c.i

CMakeFiles/parser.dir/src/scanner_ad_hoc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parser.dir/src/scanner_ad_hoc.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johndemirci/Downloads/UmitDemirciLab6/src/scanner_ad_hoc.c -o CMakeFiles/parser.dir/src/scanner_ad_hoc.c.s

# Object files for target parser
parser_OBJECTS = \
"CMakeFiles/parser.dir/src/main.c.o" \
"CMakeFiles/parser.dir/src/parser.c.o" \
"CMakeFiles/parser.dir/src/eval.c.o" \
"CMakeFiles/parser.dir/src/scanner_ad_hoc.c.o"

# External object files for target parser
parser_EXTERNAL_OBJECTS =

parser: CMakeFiles/parser.dir/src/main.c.o
parser: CMakeFiles/parser.dir/src/parser.c.o
parser: CMakeFiles/parser.dir/src/eval.c.o
parser: CMakeFiles/parser.dir/src/scanner_ad_hoc.c.o
parser: CMakeFiles/parser.dir/build.make
parser: CMakeFiles/parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/parser.dir/build: parser

.PHONY : CMakeFiles/parser.dir/build

CMakeFiles/parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/parser.dir/clean

CMakeFiles/parser.dir/depend:
	cd /Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johndemirci/Downloads/UmitDemirciLab6 /Users/johndemirci/Downloads/UmitDemirciLab6 /Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug /Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug /Users/johndemirci/Downloads/UmitDemirciLab6/cmake-build-debug/CMakeFiles/parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/parser.dir/depend

