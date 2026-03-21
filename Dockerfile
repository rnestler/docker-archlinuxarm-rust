FROM --platform=linux/arm64 scratch as root
ADD ArchLinuxARM-aarch64-latest.tar.gz /
ENV LANG=C.UTF-8
CMD ["/usr/bin/bash"]
