#!/bin/bash

xhost +si:localuser:root

CMD=${@:-"/slam.sh"}

docker run --rm -it --gpus all \
           --privileged \
           --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
           --env=DISPLAY \
           --env="NVIDIA_DRIVER_CAPABILITIES=graphics,compat32,utility" \
           --name=realsense-slam \
           --volume=./librealsense \
           future731/realsense-slam ${CMD}
