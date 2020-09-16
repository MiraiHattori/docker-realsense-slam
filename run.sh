#!/bin/bash

xhost +si:localuser:root

CMD=${@:-"/bin/bash"}

docker rm realsense-slam

# echo $(python generate_usb_arg.py)

docker run --rm -it --gpus all \
           --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
           --env=DISPLAY \
           --env="NVIDIA_DRIVER_CAPABILITIES=graphics,compat32,utility" \
           $(python generate_usb_arg.py) \
           --name=realsense-slam  \
           --volume="${PWD}/librealsense:/librealsense" \
           future731/realsense-slam ${CMD}
