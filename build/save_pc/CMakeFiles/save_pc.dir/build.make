# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dhri-dz/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dhri-dz/catkin_ws/build

# Include any dependencies generated for this target.
include save_pc/CMakeFiles/save_pc.dir/depend.make

# Include the progress variables for this target.
include save_pc/CMakeFiles/save_pc.dir/progress.make

# Include the compile flags for this target's objects.
include save_pc/CMakeFiles/save_pc.dir/flags.make

save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o: save_pc/CMakeFiles/save_pc.dir/flags.make
save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o: /home/dhri-dz/catkin_ws/src/save_pc/src/save_pc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dhri-dz/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o"
	cd /home/dhri-dz/catkin_ws/build/save_pc && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/save_pc.dir/src/save_pc.cpp.o -c /home/dhri-dz/catkin_ws/src/save_pc/src/save_pc.cpp

save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/save_pc.dir/src/save_pc.cpp.i"
	cd /home/dhri-dz/catkin_ws/build/save_pc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dhri-dz/catkin_ws/src/save_pc/src/save_pc.cpp > CMakeFiles/save_pc.dir/src/save_pc.cpp.i

save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/save_pc.dir/src/save_pc.cpp.s"
	cd /home/dhri-dz/catkin_ws/build/save_pc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dhri-dz/catkin_ws/src/save_pc/src/save_pc.cpp -o CMakeFiles/save_pc.dir/src/save_pc.cpp.s

save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.requires:
.PHONY : save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.requires

save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.provides: save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.requires
	$(MAKE) -f save_pc/CMakeFiles/save_pc.dir/build.make save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.provides.build
.PHONY : save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.provides

save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.provides.build: save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o

# Object files for target save_pc
save_pc_OBJECTS = \
"CMakeFiles/save_pc.dir/src/save_pc.cpp.o"

# External object files for target save_pc
save_pc_EXTERNAL_OBJECTS =

/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: save_pc/CMakeFiles/save_pc.dir/build.make
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_common.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_octree.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_io.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_kdtree.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_search.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_sample_consensus.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_filters.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_features.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_keypoints.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_segmentation.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_visualization.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_outofcore.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_registration.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_recognition.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_surface.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_people.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_tracking.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libpcl_apps.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libOpenNI.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libvtkCommon.so.5.8.0
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libvtkRendering.so.5.8.0
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libvtkHybrid.so.5.8.0
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libvtkCharts.so.5.8.0
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libnodeletlib.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libbondcpp.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libclass_loader.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/libPocoFoundation.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libdl.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libroslib.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librospack.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librosbag.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librosbag_storage.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libroslz4.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libtopic_tools.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libtf.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libtf2_ros.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libactionlib.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libmessage_filters.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libroscpp.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libtf2.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librosconsole.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/liblog4cxx.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/librostime.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /opt/ros/indigo/lib/libcpp_common.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc: save_pc/CMakeFiles/save_pc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc"
	cd /home/dhri-dz/catkin_ws/build/save_pc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/save_pc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
save_pc/CMakeFiles/save_pc.dir/build: /home/dhri-dz/catkin_ws/devel/lib/save_pc/save_pc
.PHONY : save_pc/CMakeFiles/save_pc.dir/build

save_pc/CMakeFiles/save_pc.dir/requires: save_pc/CMakeFiles/save_pc.dir/src/save_pc.cpp.o.requires
.PHONY : save_pc/CMakeFiles/save_pc.dir/requires

save_pc/CMakeFiles/save_pc.dir/clean:
	cd /home/dhri-dz/catkin_ws/build/save_pc && $(CMAKE_COMMAND) -P CMakeFiles/save_pc.dir/cmake_clean.cmake
.PHONY : save_pc/CMakeFiles/save_pc.dir/clean

save_pc/CMakeFiles/save_pc.dir/depend:
	cd /home/dhri-dz/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dhri-dz/catkin_ws/src /home/dhri-dz/catkin_ws/src/save_pc /home/dhri-dz/catkin_ws/build /home/dhri-dz/catkin_ws/build/save_pc /home/dhri-dz/catkin_ws/build/save_pc/CMakeFiles/save_pc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : save_pc/CMakeFiles/save_pc.dir/depend

