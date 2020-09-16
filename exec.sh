#!/bin/bash

xhost +si:localuser:root

CMD=${@:-"/bin/bash"}

docker exec -it realsense-slam ${CMD}
