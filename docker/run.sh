xhost +local:docker

docker run \
    --volume ${PWD}:/home/ros1_ws/src/mpl_ros:Z \
    -e "DISPLAY=$DISPLAY" \
    -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --device=/dev/dri:/dev/dri \
    --name melodic_motion_planning \
    -ti -d melodic_motion_planning:latest
