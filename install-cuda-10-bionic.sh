#!/bin/bash

# 1. Install CUDA Toolkit 10
#wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.243-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && sudo apt update
sudo dpkg -i cuda-repo-ubuntu1804_10.1.243-1_amd64.deb

sudo apt update
sudo apt install -y cuda

# 2. Install CuDNN 7 and NCCL 2
wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo dpkg -i nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb

sudo apt update
sudo apt install -y libcudnn7 libcudnn7-dev libnccl2 libc-ares-dev

sudo apt autoremove
sudo apt upgrade

# Link libraries to standard locations
sudo mkdir -p /usr/local/cuda-10.1/nccl/lib
sudo ln -s /usr/lib/x86_64-linux-gnu/libnccl.so.2 /usr/local/cuda/nccl/lib/
sudo ln -s /usr/lib/x86_64-linux-gnu/libcudnn.so.7 /usr/local/cuda-10.1/lib64/

echo 'If everything worked fine, reboot now.'
