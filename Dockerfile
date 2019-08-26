FROM ufoym/deepo:pytorch-py36

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get -y update && \
    apt-get -y install nfs-common cifs-utils sshpass wget git graphviz openssh-server openssh-client curl

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip --no-cache-dir install torchvision tensorboard tensorboardx pyyaml graphviz

WORKDIR /root
