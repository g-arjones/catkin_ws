#!/bin/sh

. /opt/ros/kinetic/setup.sh

mkdir -p src
wstool init -j8 src mccr.rosinstall
rosdep install --from-paths src -i --rosdistro kinetic -y

catkin init > /dev/null
catkin config --install --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE > /dev/null
catkin build
