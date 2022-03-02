# AUT-Robotics
In this course, we will work with ros-noetic and gazebo simulator<br/>
- [ROS Documentation](http://wiki.ros.org/)
- [ROS-Noetic installation](http://wiki.ros.org/noetic/Installation)
- [Creating a ROS catkin Workspace](#creating-a-ros-catkin-workspace)
- [Creating a ROS Package](#creating-a-ros-package)
- [ROS Help](#ros-help)

## Creating a ROS catkin Workspace
`cd Desktop/`
`mkdir -p catkin_ws1/src`
`cd catkin_ws1/src/`
`catkin_init_workspace`
`cd ..`
`catkin_make`
`. devel/setup.bash`

## Creating a ROS Package
`cd src/`
`catkin_create_pkg package_name`

## ROS Help
- ros packages help
`rospack help`
- ros change directory
`roscd package_name`
- check dependencies
`rospack depends package_name`
