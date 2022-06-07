FROM ubuntu:21.10

RUN apt update \
  && apt-get install -y --no-install-recommends sudo


ARG USERNAME
ARG GROUPNAME

ARG UID
ARG GID

ARG PASSWORD

RUN groupadd --gid $GID $GROUPNAME && \
    useradd --create-home --shell /bin/bash --uid $UID --gid $GID --groups sudo $USERNAME && \
	echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME
WORKDIR /home/$USERNAME/
