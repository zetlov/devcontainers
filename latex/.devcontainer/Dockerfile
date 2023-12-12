FROM ubuntu:latest

ARG TL_VERSION=2023
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

RUN apt update -y \
    && apt upgrade -y \
    && apt install -y wget perl sudo git \
    && mkdir /tmp/install-tl-unx

COPY texlive.profile /tmp/install-tl-unx/.

RUN groupadd -g ${USER_GID} ${USERNAME} \
    && useradd -u ${USER_UID} -g ${USER_GID} -m ${USERNAME} \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

RUN wget -O - https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/install-tl-unx.tar.gz | tar -zxv -C /tmp/install-tl-unx/ \
    && perl /tmp/install-tl-unx/install-tl-20*/install-tl --profile /tmp/install-tl-unx/texlive.profile \
    && /usr/local/texlive/${TL_VERSION}/bin/x86_64-linux/tlmgr path add \
    && tlmgr update --self --all \
    && tlmgr install latexmk \
    lualatex-math \
    titlesec