#!/bin/sh

COMMAND=/bin/bash

xhost + # allow connections to X server
docker run --privileged -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw"  -i -t --rm ubuntu_with_nvidia_driver:20.04 $COMMAND
