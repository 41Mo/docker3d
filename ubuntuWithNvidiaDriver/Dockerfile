ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
MAINTAINER github/gklingler

RUN apt-get update
RUN apt-get install --no-install-recommends -y kmod

# install nvidia driver
RUN apt-get install -y binutils
ADD nvdriver/NVIDIA-DRIVER.run /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module
RUN rm /tmp/NVIDIA-DRIVER.run
