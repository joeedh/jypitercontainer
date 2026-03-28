FROM python:3.12.13-trixie

#ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install git curl wget bash sudo -y
RUN apt-get install nodejs npm vim -y
RUN apt-get install gh -y

# rebase on pull if necassary, don't insert merge commits
RUN git config --global pull.rebase true

# disable autocrlf
RUN git config --global core.autocrlf false 

# set default shell to bash
RUN chsh -s /bin/bash
RUN echo "DSHELL=/bin/bash" >> /etc/adduser.conf

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

RUN chsh -s /bin/bash $USERNAME
RUN chsh -s /bin/bash root

RUN mkdir -p /home/$USERNAME

#remove passwords for vscode and root
RUN passwd -d $USERNAME
RUN passwd -d root
# add vscode user to sudoer root privilege group
RUN usermod -aG sudo $USERNAME

RUN pip install --no-cache-dir \
    jupyter \
    jupyterlab \
    ipykernel \
    numpy \
    pandas \
    matplotlib

USER $USERNAME

ARG ANACONDA_INSTALLER=Miniconda3-py313_26.1.1-1-Linux-x86_64.sh

RUN curl -o /home/$USERNAME/$ANACONDA_INSTALLER  https://repo.anaconda.com/miniconda/$ANACONDA_INSTALLER
RUN chown $USERNAME:$USERNAME /home/$USERNAME/$ANACONDA_INSTALLER
RUN bash /home/$USERNAME/$ANACONDA_INSTALLER -b -p /home/$USERNAME/anaconda3

EXPOSE 8888
