FROM --platform=linux/arm64 scratch AS root
ADD ArchLinuxARM-aarch64-latest.tar.gz /
COPY pacman.conf /etc/pacman.conf
ENV LANG=C.UTF-8
CMD ["/usr/bin/bash"]
