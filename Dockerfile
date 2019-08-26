FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu16.04

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get -y update && \
    apt-get -y install sudo \
    apt-utils \
    git \
    curl \
    vim \
    unzip \
    wget \
    build-essential \
    cmake \
    libopenblas-dev \
    automake \
    openssh-client \
    openssh-server \
    lsof \
    python3 \
    python3-dev \
    python3-tk \
    python3-pip \
    nfs-common \
    cifs-utils \
    sshpass \
    graphviz \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip --no-cache-dir install torch torchvision tensorboard tensorboardx pyyaml graphviz

ENV PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/root/.local/bin:/usr/bin:/bin:/sbin

WORKDIR /root
