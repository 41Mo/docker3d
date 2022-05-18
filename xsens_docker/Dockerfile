FROM ubuntu_with_nvidia_driver:18.04
MAINTAINER 41mo

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
sudo \
lsb-release \
qt5-default \
libqt5opengl5 \
libusb-1.0-0 \
libxcb-xinerama0 \
libxcb-xinput0

COPY MT_Software_Suite_linux-x64_2021.4/mtmanager/linux-x64/bin /opt/mtmanager/
