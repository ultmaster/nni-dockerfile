FROM ufoym/deepo:pytorch-py36

RUN apt update && apt install --assume-yes nfs-common cifs-utils sshpass wget git graphviz
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip --no-cache-dir install torchvision tensorboard tensorboardx pyyaml graphviz python-graphviz

WORKDIR /root
