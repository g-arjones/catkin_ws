# Welcome to this sample catkin workspace repository

## 1. Install ROS Kinetic

Setup your sources.list:


```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list'

```

Setup apt keys:


```
$ sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
```

Install apt packages:


```
$ sudo apt-get update
$ sudo apt-get install ros-kinetic-desktop-full python-wstool python-catkin-tools build-essential
```

## 2. Initialize and build the workspace

This will download and build all required packages

```
$ ./init.sh
```

## 3. Load the environment

You have to do this whenever you are going to use this workspace

```
$ source env.sh
```

## 4. Have fun!

Time to start coding... :)

## 5. BONUS: Add package to workspace

Add package

```
wstool set robot_model --git https://kforge.ros.org/robotmodel/robot_model
```

Download package

```
wstool update -t src
```

Install dependencies
```
rosdep install --from-paths src -i --rosdistro kinetic -y
```

Rebuild the workspace

```
catkin build
```

Overwrite rosinstall file

```
cp src/.rosinstall workspace.rosinstall
```
