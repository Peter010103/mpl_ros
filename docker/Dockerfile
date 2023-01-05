FROM osrf/ros:melodic-desktop-full

# Disable dpkg/gdebi interactive dialogs
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git python3 python3-pip vim python3-pip python3-rosdep python3-catkin-tools python3-osrf-pycommon libsdl-image1.2-dev libsdl-dev xserver-xorg-video-all libgl1-mesa-glx libgl1-mesa-dri

RUN pip3 install setuptools==58.2.0

# Make image smaller by not caching downloaded pip pkgs
ARG PIP_NO_CACHE_DIR=1

WORKDIR /home
