#!/bin/bash
apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u
apt-get update && sudo apt-get upgrade -y
apt-get install -y librealsense2-dkms
apt-get install -y librealsense2-utils
apt-get install -y librealsense2-dev
apt-get install -y librealsense2-dbg
