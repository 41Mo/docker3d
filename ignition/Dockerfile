FROM ubuntu_with_nvidia_driver:20.04
LABEL author=41mo

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install --no-install-recommends -y \
sudo \
lsb-release \
bash-completion \
mesa-utils \
cmake \
make \
g++ \
git \
gnupg \
wget

RUN wget https://packages.osrfoundation.org/gazebo.gpg --no-check-certificate -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
RUN sh -c "echo \"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main\" | tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null"

RUN apt-get update && apt-get install -y \
ignition-fortress \
rapidjson-dev

RUN useradd -U -m gazebo_user && \
    usermod -G users gazebo_user

ENV USER=gazebo_user
RUN echo "gazebo_user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/gazebo_user
RUN chmod 0440 /etc/sudoers.d/gazebo_user

USER gazebo_user

ENV IGN_GAZEBO_SYSTEM_PLUGIN_PATH=/gazebo/build
ENV IGN_GAZEBO_RESOURCE_PATH=/gazebo/models:/gazebo/worlds:
