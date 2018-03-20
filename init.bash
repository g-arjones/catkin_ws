#!/bin/bash

set -e

source /opt/ros/kinetic/setup.bash
source ./overrides.bash

mkdir -p src
wstool init -j8 src mccr.rosinstall
sudo rosdep init
rosdep update
rosdep install --from-paths src -i --rosdistro kinetic -y

catkin init > /dev/null
catkin config --install --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE > /dev/null
catkin build
