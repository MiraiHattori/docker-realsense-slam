FROM ibisssl/ros-kinetic

RUN apt-get update && apt-get upgrade -y && apt-get install -y ros-kinetic-realsense2-camera ros-kinetic-imu-filter-madgwick ros-kinetic-rtabmap-ros ros-kinetic-robot-localization
RUN apt-get update && apt-get upgrade -y && apt-get install -y vim usbutils software-properties-common

RUN pip install pyrealsense2

ADD ./my_entryrc /
ADD ./my_entrypoint.sh /
ADD ./scripts-on-docker/install_sdk.sh /
ADD ./scripts-on-docker/slam.sh /
ADD ./scripts-on-docker/camera.sh /
ADD ./scripts-on-docker/calibrate.sh /
RUN /install_sdk.sh

ENTRYPOINT ["/my_entrypoint.sh"]
CMD ["/bin/bash"]
