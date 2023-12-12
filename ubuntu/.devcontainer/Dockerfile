FROM ubuntu:rolling

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

RUN apt update -y \
    && apt upgrade -y \
    && apt install -y wget perl sudo git \
    && groupadd -g ${USER_GID} ${USERNAME} \
    && useradd -u ${USER_UID} -g ${USER_GID} -m ${USERNAME} \
    && echo ${USERNAME} ALL=\(root\) NOPASSWE:ALL > /etc/sodoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}