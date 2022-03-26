# AUT-Robotics
In this course, we will work with ros-noetic and gazebo simulator<br/>
- [ROS Documentation](http://wiki.ros.org/)
- [ROS-Noetic installation](http://wiki.ros.org/noetic/Installation)
- [Creating a ROS catkin Workspace](#creating-a-ros-catkin-workspace)
- [Creating a ROS Package](#creating-a-ros-package)
- [ROS Help](#ros-help)
- [Creating ROS Node](#creating-ros-node)

## Creating a ROS Catkin Workspace
`cd Desktop/`<br/>
`mkdir -p catkin_ws1/src`<br/>
`cd catkin_ws1/src/`<br/>
`catkin_init_workspace`<br/>
`cd ..`<br/>
`catkin_make`<br/>

## Creating a ROS Package
`cd Desktop/catkin_ws1/src/`<br/>
`catkin_create_pkg package_name std_msgs rospy`<br/>

## ROS Help
- ros packages help:
`rospack help`
- for every terminal run:
`. devel/setup.bash`
- ros change directory:
`roscd package_name`
- check dependencies:
`rospack depends package_name`

## Creating and Running ROS Node
- **run master node**<br/>
in terminal 1 run:<br>
`cd Desktop/catkin_ws1`<br/>
`roscore`

- **run non-master node**<br/>
in terminal 2 run:<br/>
`cd Desktop/catkin_ws1/src/package_name/src/`<br/>
`touch node_name.py`<br/>
`chmod +x node_name.py`<br/>
`cd ../../..`<br/>
`rosrun package_name node_name.py`
