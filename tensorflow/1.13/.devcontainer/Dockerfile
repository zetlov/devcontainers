FROM tensorflow/tensorflow:1.13.0rc0-gpu-py3

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update --yes \
    && apt-get upgrade --yes --allow-unauthenticated \
    && apt-get install --yes sudo \
    && apt-get install --yes git \
    && apt-get install --yes python3-tk

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -u $USER_UID -g $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME\
    && chmod 0440 /etc/sudoers.d/$USERNAME