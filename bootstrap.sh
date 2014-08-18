#!/bin/bash/env bash

#ROS install and setup
#ROS install
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
apt-get update
apt-get install -y ros-indigo-desktop-full
rosdep init
rosdep update
apt-get install -y python-rosinstall
sudo -u vagrant echo "source /opt/ros/indigo/setup.bash" >> /home/vagrant/.bashrc
source /opt/ros/indigo/setup.bash
#create catkin workspace
mkdir -p /vagrant/catkin_ws/src
cd /vagrant/catkin_ws/src
catkin_init_workspace
cd /vagrant/catkin_ws
catkin_make
#add workspace to ROS path
sudo -u vagrant echo "source /vagrant/catkin_ws/devel/setup.bash" >> /home/vagrant/.bashrc
source /vagrant/catkin_ws/devel/setup.bash