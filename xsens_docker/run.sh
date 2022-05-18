#!/bin/bash

# 
#	--privileged \
#	--cap-add=SYS_PTRACE \
#	--security-opt seccomp=unconfined \
#	--network host \
#       -v `pwd`:/xsens \

PATH=/home

docker run \
	--rm \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-e DISPLAY=$DISPLAY \
	-it \
	-v $PATH:/xsens \
	--privileged \
	mtmanager:latest bash
