#!/bin/sh
IMAGE_NAME=ubuntu_with_nvidia_driver
UBUNTU_VERSION=18.04
NVIDIA_DRIVER=./nvdriver/NVIDIA-DRIVER.run  # path to nvidia driver
TAG=$IMAGE_NAME:$UBUNTU_VERSION
while [[ "${1}" != "" ]]; do
    case "${1}" in
    	-uv )    TAG=$IMAGE_NAME:$2
                UBUNTU_VERSION=$2
                ;;
	    -h )    echo "Example: if you want to choose 20.04 ubuntu version, use ./build.sh -uv 20.04";;
    esac
    shift 1
done	

cd "$(dirname "$(readlink -f "$0")")"
if [[ ! -f "nvdriver/NVIDIA-DRIVER.run" ]]; 
then
    nvdriver/dl_nv.sh
fi

docker build --build-arg UBUNTU_VERSION=$UBUNTU_VERSION -t $TAG .
