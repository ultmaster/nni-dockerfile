FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu16.04

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get -y update && \
    apt-get -y install nfs-common cifs-utils sshpass wget git graphviz openssh-server openssh-client curl
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip --no-cache-dir install torch torchvision tensorboard tensorboardx pyyaml graphviz

ENV PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/root/.local/bin:/usr/bin:/bin:/sbin

WORKDIR /root
