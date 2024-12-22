#!/usr/bin/env bash

sudo yum -y update
sudo yum -y install \
     autoconf automake libtool \
     bzip2 bzip2-devel \
     cmake \
     diffutils \
     emacs-nox \
     file \
     findutils \
     gcc gcc-c++ gcc-gfortran libstdc++-devel \
     git \
     gzip \
     libzstd-devel \
     lshw \
     lz4 lz4-devel \
     make \
     mesa-libGL-devel\
     mesa-libGLU-devel \
     patch \
     perl-Thread-Queue \
     procps-ng \
     python3 \
     rsync \
     tar \
     time \
     unzip \
     wget \
     which \
     xz xz-devel \
     zlib zlib-devel \
     docker
sudo dnf -y group install "Development Tools"
sudo dnf -y install findutils gcc-gfortran hostname iproute python3 python3-pip python3-setuptools unzip python3-boto3

sudo service docker start
sudo usermod -a -G docker ec2-user
sudo rsync -axvP /pv/ec2-user-home/ /home/ec2-user/
sudo mkdir -p /local/
sudo chown -R ec2-user: /local/

echo && echo "[${0}] complete on $(date)"
