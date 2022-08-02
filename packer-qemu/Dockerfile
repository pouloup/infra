FROM archlinux:latest
RUN pacman -Sy --noconfirm qemu packer

RUN pacman -Sy --noconfirm dbus \
        gtk4 \
        xorg-xauth \
        xorg-xhost \
        pkgconfig \
        xorg-xeyes

RUN mkdir -p /etc/sudoers.d/ && \
    useradd default && \
    passwd -d default && \
    chgrp -R default /usr/local && \
    find /usr/local -type d | xargs chmod g+w && \
    echo "default ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/default && \
    chmod 0440 /etc/sudoers.d/default && \
    xhost +

USER default
ENTRYPOINT packer
