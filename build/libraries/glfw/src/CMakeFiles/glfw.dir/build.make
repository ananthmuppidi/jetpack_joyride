# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build"

# Include any dependencies generated for this target.
include libraries/glfw/src/CMakeFiles/glfw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.make

# Include the progress variables for this target.
include libraries/glfw/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/glfw/src/CMakeFiles/glfw.dir/flags.make

libraries/glfw/src/CMakeFiles/glfw.dir/context.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/context.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/context.c
libraries/glfw/src/CMakeFiles/glfw.dir/context.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/context.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/context.c.o -MF CMakeFiles/glfw.dir/context.c.o.d -o CMakeFiles/glfw.dir/context.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/context.c"

libraries/glfw/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/context.c" > CMakeFiles/glfw.dir/context.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/context.c" -o CMakeFiles/glfw.dir/context.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/init.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/init.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/init.c
libraries/glfw/src/CMakeFiles/glfw.dir/init.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/init.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/init.c.o -MF CMakeFiles/glfw.dir/init.c.o.d -o CMakeFiles/glfw.dir/init.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/init.c"

libraries/glfw/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/init.c" > CMakeFiles/glfw.dir/init.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/init.c" -o CMakeFiles/glfw.dir/init.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/input.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/input.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/input.c
libraries/glfw/src/CMakeFiles/glfw.dir/input.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/input.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/input.c.o -MF CMakeFiles/glfw.dir/input.c.o.d -o CMakeFiles/glfw.dir/input.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/input.c"

libraries/glfw/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/input.c" > CMakeFiles/glfw.dir/input.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/input.c" -o CMakeFiles/glfw.dir/input.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/monitor.c
libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.o -MF CMakeFiles/glfw.dir/monitor.c.o.d -o CMakeFiles/glfw.dir/monitor.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/monitor.c"

libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/monitor.c" > CMakeFiles/glfw.dir/monitor.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/monitor.c" -o CMakeFiles/glfw.dir/monitor.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/vulkan.c
libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o -MF CMakeFiles/glfw.dir/vulkan.c.o.d -o CMakeFiles/glfw.dir/vulkan.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/vulkan.c"

libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/vulkan.c" > CMakeFiles/glfw.dir/vulkan.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/vulkan.c" -o CMakeFiles/glfw.dir/vulkan.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/window.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/window.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/window.c
libraries/glfw/src/CMakeFiles/glfw.dir/window.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/window.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/window.c.o -MF CMakeFiles/glfw.dir/window.c.o.d -o CMakeFiles/glfw.dir/window.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/window.c"

libraries/glfw/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/window.c" > CMakeFiles/glfw.dir/window.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/window.c" -o CMakeFiles/glfw.dir/window.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_init.m
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.o -MF CMakeFiles/glfw.dir/cocoa_init.m.o.d -o CMakeFiles/glfw.dir/cocoa_init.m.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_init.m"

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_init.m.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_init.m" > CMakeFiles/glfw.dir/cocoa_init.m.i

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_init.m.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_init.m" -o CMakeFiles/glfw.dir/cocoa_init.m.s

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_joystick.m
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o -MF CMakeFiles/glfw.dir/cocoa_joystick.m.o.d -o CMakeFiles/glfw.dir/cocoa_joystick.m.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_joystick.m"

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_joystick.m.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_joystick.m" > CMakeFiles/glfw.dir/cocoa_joystick.m.i

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_joystick.m.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_joystick.m" -o CMakeFiles/glfw.dir/cocoa_joystick.m.s

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_monitor.m
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o -MF CMakeFiles/glfw.dir/cocoa_monitor.m.o.d -o CMakeFiles/glfw.dir/cocoa_monitor.m.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_monitor.m"

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_monitor.m.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_monitor.m" > CMakeFiles/glfw.dir/cocoa_monitor.m.i

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_monitor.m.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_monitor.m" -o CMakeFiles/glfw.dir/cocoa_monitor.m.s

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_window.m
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.o -MF CMakeFiles/glfw.dir/cocoa_window.m.o.d -o CMakeFiles/glfw.dir/cocoa_window.m.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_window.m"

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_window.m.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_window.m" > CMakeFiles/glfw.dir/cocoa_window.m.i

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_window.m.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_window.m" -o CMakeFiles/glfw.dir/cocoa_window.m.s

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_time.c
libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.o -MF CMakeFiles/glfw.dir/cocoa_time.c.o.d -o CMakeFiles/glfw.dir/cocoa_time.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_time.c"

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_time.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_time.c" > CMakeFiles/glfw.dir/cocoa_time.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_time.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/cocoa_time.c" -o CMakeFiles/glfw.dir/cocoa_time.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/posix_thread.c
libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o -MF CMakeFiles/glfw.dir/posix_thread.c.o.d -o CMakeFiles/glfw.dir/posix_thread.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/posix_thread.c"

libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_thread.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/posix_thread.c" > CMakeFiles/glfw.dir/posix_thread.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_thread.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/posix_thread.c" -o CMakeFiles/glfw.dir/posix_thread.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/nsgl_context.m
libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.o -MF CMakeFiles/glfw.dir/nsgl_context.m.o.d -o CMakeFiles/glfw.dir/nsgl_context.m.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/nsgl_context.m"

libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/nsgl_context.m.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/nsgl_context.m" > CMakeFiles/glfw.dir/nsgl_context.m.i

libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/nsgl_context.m.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/nsgl_context.m" -o CMakeFiles/glfw.dir/nsgl_context.m.s

libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/egl_context.c
libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o -MF CMakeFiles/glfw.dir/egl_context.c.o.d -o CMakeFiles/glfw.dir/egl_context.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/egl_context.c"

libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/egl_context.c" > CMakeFiles/glfw.dir/egl_context.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/egl_context.c" -o CMakeFiles/glfw.dir/egl_context.c.s

libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/flags.make
libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: /Users/ananthmuppidi/IIIT\ H/Semester\ 2/DSA/jetpack_joyride/libraries/glfw/src/osmesa_context.c
libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: libraries/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_15) "Building C object libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o -MF CMakeFiles/glfw.dir/osmesa_context.c.o.d -o CMakeFiles/glfw.dir/osmesa_context.c.o -c "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/osmesa_context.c"

libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/osmesa_context.c" > CMakeFiles/glfw.dir/osmesa_context.c.i

libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src/osmesa_context.c" -o CMakeFiles/glfw.dir/osmesa_context.c.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/vulkan.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/cocoa_init.m.o" \
"CMakeFiles/glfw.dir/cocoa_joystick.m.o" \
"CMakeFiles/glfw.dir/cocoa_monitor.m.o" \
"CMakeFiles/glfw.dir/cocoa_window.m.o" \
"CMakeFiles/glfw.dir/cocoa_time.c.o" \
"CMakeFiles/glfw.dir/posix_thread.c.o" \
"CMakeFiles/glfw.dir/nsgl_context.m.o" \
"CMakeFiles/glfw.dir/egl_context.c.o" \
"CMakeFiles/glfw.dir/osmesa_context.c.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/context.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/init.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/input.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/monitor.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/window.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_init.m.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_window.m.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/cocoa_time.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/nsgl_context.m.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/build.make
libraries/glfw/src/libglfw3.a: libraries/glfw/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library libglfw3.a"
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/glfw/src/CMakeFiles/glfw.dir/build: libraries/glfw/src/libglfw3.a
.PHONY : libraries/glfw/src/CMakeFiles/glfw.dir/build

libraries/glfw/src/CMakeFiles/glfw.dir/clean:
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : libraries/glfw/src/CMakeFiles/glfw.dir/clean

libraries/glfw/src/CMakeFiles/glfw.dir/depend:
	cd "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride" "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/libraries/glfw/src" "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build" "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src" "/Users/ananthmuppidi/IIIT H/Semester 2/DSA/jetpack_joyride/build/libraries/glfw/src/CMakeFiles/glfw.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : libraries/glfw/src/CMakeFiles/glfw.dir/depend

