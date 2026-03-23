FROM --platform=linux/arm64 scratch AS root
ADD ArchLinuxARM-aarch64-latest.tar.gz /
COPY pacman.conf /etc/pacman.conf
RUN pacman-key --init && pacman-key --populate archlinuxarm
# Remove unnecessary packages and clean up
RUN pacman -Rs --noconfirm linux-firmware linux-aarch64
RUN rm -rf /boot/*
# Update system
RUN pacman --noconfirm -Syu

FROM --platform=linux/arm64 scratch
COPY --from=root / /
ENV LANG=C.UTF-8
CMD ["/usr/bin/bash"]
