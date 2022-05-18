#!/bin/bash

docker run \
	--rm \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v `pwd`/ardupilot_gazebo:/gazebo \
	-e DISPLAY=$DISPLAY \
	-it \
	--net host \
	ignition:latest
