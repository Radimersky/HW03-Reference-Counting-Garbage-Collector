# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/an/clion/clion-2017.3.4/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/an/clion/clion-2017.3.4/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/an/pb071/pb071/hw03

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/an/pb071/pb071/hw03/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mvm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mvm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mvm.dir/flags.make

CMakeFiles/mvm.dir/memoryVM.c.o: CMakeFiles/mvm.dir/flags.make
CMakeFiles/mvm.dir/memoryVM.c.o: ../memoryVM.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/an/pb071/pb071/hw03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mvm.dir/memoryVM.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mvm.dir/memoryVM.c.o   -c /home/an/pb071/pb071/hw03/memoryVM.c

CMakeFiles/mvm.dir/memoryVM.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mvm.dir/memoryVM.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/an/pb071/pb071/hw03/memoryVM.c > CMakeFiles/mvm.dir/memoryVM.c.i

CMakeFiles/mvm.dir/memoryVM.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mvm.dir/memoryVM.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/an/pb071/pb071/hw03/memoryVM.c -o CMakeFiles/mvm.dir/memoryVM.c.s

CMakeFiles/mvm.dir/memoryVM.c.o.requires:

.PHONY : CMakeFiles/mvm.dir/memoryVM.c.o.requires

CMakeFiles/mvm.dir/memoryVM.c.o.provides: CMakeFiles/mvm.dir/memoryVM.c.o.requires
	$(MAKE) -f CMakeFiles/mvm.dir/build.make CMakeFiles/mvm.dir/memoryVM.c.o.provides.build
.PHONY : CMakeFiles/mvm.dir/memoryVM.c.o.provides

CMakeFiles/mvm.dir/memoryVM.c.o.provides.build: CMakeFiles/mvm.dir/memoryVM.c.o


CMakeFiles/mvm.dir/memoryVMObject.c.o: CMakeFiles/mvm.dir/flags.make
CMakeFiles/mvm.dir/memoryVMObject.c.o: ../memoryVMObject.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/an/pb071/pb071/hw03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mvm.dir/memoryVMObject.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mvm.dir/memoryVMObject.c.o   -c /home/an/pb071/pb071/hw03/memoryVMObject.c

CMakeFiles/mvm.dir/memoryVMObject.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mvm.dir/memoryVMObject.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/an/pb071/pb071/hw03/memoryVMObject.c > CMakeFiles/mvm.dir/memoryVMObject.c.i

CMakeFiles/mvm.dir/memoryVMObject.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mvm.dir/memoryVMObject.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/an/pb071/pb071/hw03/memoryVMObject.c -o CMakeFiles/mvm.dir/memoryVMObject.c.s

CMakeFiles/mvm.dir/memoryVMObject.c.o.requires:

.PHONY : CMakeFiles/mvm.dir/memoryVMObject.c.o.requires

CMakeFiles/mvm.dir/memoryVMObject.c.o.provides: CMakeFiles/mvm.dir/memoryVMObject.c.o.requires
	$(MAKE) -f CMakeFiles/mvm.dir/build.make CMakeFiles/mvm.dir/memoryVMObject.c.o.provides.build
.PHONY : CMakeFiles/mvm.dir/memoryVMObject.c.o.provides

CMakeFiles/mvm.dir/memoryVMObject.c.o.provides.build: CMakeFiles/mvm.dir/memoryVMObject.c.o


# Object files for target mvm
mvm_OBJECTS = \
"CMakeFiles/mvm.dir/memoryVM.c.o" \
"CMakeFiles/mvm.dir/memoryVMObject.c.o"

# External object files for target mvm
mvm_EXTERNAL_OBJECTS =

libmvm.a: CMakeFiles/mvm.dir/memoryVM.c.o
libmvm.a: CMakeFiles/mvm.dir/memoryVMObject.c.o
libmvm.a: CMakeFiles/mvm.dir/build.make
libmvm.a: CMakeFiles/mvm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/an/pb071/pb071/hw03/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libmvm.a"
	$(CMAKE_COMMAND) -P CMakeFiles/mvm.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mvm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mvm.dir/build: libmvm.a

.PHONY : CMakeFiles/mvm.dir/build

CMakeFiles/mvm.dir/requires: CMakeFiles/mvm.dir/memoryVM.c.o.requires
CMakeFiles/mvm.dir/requires: CMakeFiles/mvm.dir/memoryVMObject.c.o.requires

.PHONY : CMakeFiles/mvm.dir/requires

CMakeFiles/mvm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mvm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mvm.dir/clean

CMakeFiles/mvm.dir/depend:
	cd /home/an/pb071/pb071/hw03/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/an/pb071/pb071/hw03 /home/an/pb071/pb071/hw03 /home/an/pb071/pb071/hw03/cmake-build-debug /home/an/pb071/pb071/hw03/cmake-build-debug /home/an/pb071/pb071/hw03/cmake-build-debug/CMakeFiles/mvm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mvm.dir/depend

