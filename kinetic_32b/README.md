# kinetic 32b

You need to install docker first to build the image.

## Build sbre_robot_kinetic_32b_gentoo_prefix

Now, you can build ros kinetic with:

`docker build --network host -f Dockerfile -t sbre_robot_ros_kinetic_32b_gentoo_prefix .`

## Send the gentoo prefix on your robot's head

You have now a docker image with gentoo prefix and ros kinetic installed.
To install it on your robot first run your docker image:

`docker run -it sbre_robot_ros_kinetic_32b_gentoo_prefix`

Now you can send the compressed file named sbre_robot_ros_kinetic_gentoo_prefix.tar.gz
on your robot:

`cd /tmp`

`scp sbre_robot_ros_kinetic_32b_gentoo_prefix.tar.gz nao@ROBOT_IP:.`



Ssh on your robot to launch the gentoo prefix:

`ssh nao@ROBOT_IP`

Uncompressed the gentoo prefix on your robot (you can remove the compressed file afterward):

`tar xzf sbre_robot_ros_kinetic_32b_gentoo_prefix.tar.gz`

## Use gentoo prefix and ROS

In order to use the gentoo prefix and ros by default you can
send the .bash_profile (ros_base/config/.bash_profile) on the robot's head or follow the next step.

### Use gentoo prefix

Start the gentoo prefix:

`./gentoo/startprefix`

Now you can use emerge and others tools.

### Use ROS

Your are now into the gentoo prefix.
First you need to source ros:

`source /tmp/gentoo/opt/ros/kinetic/setup.bash`

Export the catkin prefix path:

`export CATKIN_PREFIX_PATH=/tmp/gentoo/opt/ros/kinetic`

Fix the ROS_IP variable with your ROBOT_IP:

`export ROS_IP=ROBOT_IP`

Now you can use catkin_make or roscore

### Naoqi_driver

Create your catkin workspace:

`mkdir -p ros_ws/src`

clone in your catkin workspace naoqi_driver and naoqi_bridge_msg:

`cd ros_ws/src`

`git clone https://github.com/ros-naoqi/naoqi_driver.git`

`git clone https://github.com/ros-naoqi/naoqi_bridge_msgs.git`

Compile the naoqi driver:

`cd ~/ros_ws`

`catkin_make`

Now you can launch naoqi_driver:

`source ~/ros_ws/devel/setup.bash`

`roslaunch naoqi_driver naoqi_driver.launch`



