#!/bin/bash

xhost +si:localuser:root

CMD=${@:-"/calibrate.sh"}

# sudo python replug_usb.py

docker run --rm -it --gpus all \
           --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
           --env="DEBIAN_FRONTEND="\
           --env=DISPLAY \
           --env="NVIDIA_DRIVER_CAPABILITIES=graphics,compat32,utility" \
           --privileged \
           --volume="$(pwd)/librealsense:/librealsense" \
           --name=realsense-slam  \
           future731/realsense-slam ${CMD}
           # $(python generate_usb_arg.py) \
