FROM ufoym/deepo:pytorch-py36

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get -y update && \
    apt-get -y install nfs-common cifs-utils sshpass wget git openssh-server openssh-client curl zip fuse golang
RUN python3 -m pip install --upgrade pip requests
RUN python3 -m pip --no-cache-dir install torchvision tb-nightly tensorboardx pyyaml hdfs nni tensorboard
RUN python3 -m pip --no-cache-dir install gluoncv pydicom mxnet-cu100mkl pandas opencv-python sklearn tqdm albumentations efficientnet-pytorch

ENV PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/root/.local/bin:/usr/bin:/bin:/sbin

WORKDIR /root
