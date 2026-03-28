FROM python:3.12.13-trixie

#ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install git curl wget bash sudo -y
RUN apt-get install vim -y
RUN apt-get install gh -y
RUN git config --global pull.rebase true

RUN chsh -s /bin/bash
RUN echo "DSHELL=/bin/bash" >> /etc/adduser.conf

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

RUN chsh -s /bin/bash vscode
RUN chsh -s /bin/bash root

RUN mkdir -p /home/vscode

#remove passwords for vscode and root
RUN passwd -d vscode
RUN passwd -d root
# add vscode user to sudoer root privilege group
RUN usermod -aG sudo vscode

RUN pip install --no-cache-dir \
    jupyter \
    jupyterlab \
    ipykernel \
    numpy \
    pandas \
    matplotlib

USER $USERNAME

EXPOSE 8888
