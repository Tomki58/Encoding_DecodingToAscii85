# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ASCII85_Encoding_Decoding.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ASCII85_Encoding_Decoding.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ASCII85_Encoding_Decoding.dir/flags.make

CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.obj: CMakeFiles/ASCII85_Encoding_Decoding.dir/flags.make
CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ASCII85_Encoding_Decoding.dir\main.cpp.obj -c C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\main.cpp

CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\main.cpp > CMakeFiles\ASCII85_Encoding_Decoding.dir\main.cpp.i

CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\main.cpp -o CMakeFiles\ASCII85_Encoding_Decoding.dir\main.cpp.s

# Object files for target ASCII85_Encoding_Decoding
ASCII85_Encoding_Decoding_OBJECTS = \
"CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.obj"

# External object files for target ASCII85_Encoding_Decoding
ASCII85_Encoding_Decoding_EXTERNAL_OBJECTS =

ASCII85_Encoding_Decoding.exe: CMakeFiles/ASCII85_Encoding_Decoding.dir/main.cpp.obj
ASCII85_Encoding_Decoding.exe: CMakeFiles/ASCII85_Encoding_Decoding.dir/build.make
ASCII85_Encoding_Decoding.exe: CMakeFiles/ASCII85_Encoding_Decoding.dir/linklibs.rsp
ASCII85_Encoding_Decoding.exe: CMakeFiles/ASCII85_Encoding_Decoding.dir/objects1.rsp
ASCII85_Encoding_Decoding.exe: CMakeFiles/ASCII85_Encoding_Decoding.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ASCII85_Encoding_Decoding.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ASCII85_Encoding_Decoding.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ASCII85_Encoding_Decoding.dir/build: ASCII85_Encoding_Decoding.exe

.PHONY : CMakeFiles/ASCII85_Encoding_Decoding.dir/build

CMakeFiles/ASCII85_Encoding_Decoding.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ASCII85_Encoding_Decoding.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ASCII85_Encoding_Decoding.dir/clean

CMakeFiles/ASCII85_Encoding_Decoding.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\cmake-build-debug C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\cmake-build-debug C:\Users\Admin\CLionProjects\ASCII85_Encoding_Decoding\cmake-build-debug\CMakeFiles\ASCII85_Encoding_Decoding.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ASCII85_Encoding_Decoding.dir/depend
