#!/bin/bash

source /opt/ros/kinetic/setup.bash

ROS_IP=localhost
ROS_HOSTNAME=localhost

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/user/local/cuda/lib64
export PATH=${PATH}:/usr/local/cuda/bin

cd /librealsense/tools/rs-imu-calibration
python rs-imu-calibration.py
