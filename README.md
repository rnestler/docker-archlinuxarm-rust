# docker-archlinuxarm-rust

[![Docker Pulls](https://img.shields.io/docker/pulls/rnestler/archlinuxarm-rust)](https://hub.docker.com/r/rnestler/archlinuxarm-rust)

Docker container for archlinuxarm with the rust toolchain installed.

It's based on the [generic AArch64 rootfs
image](https://archlinuxarm.org/platforms/armv8/generic) with some unnecessary
bits removed.

## Tags

The image is tagged with the Rust release channel. It gets built regularly with
the following tags:

 * stable
 * beta
 * nightly
 * 1.x.y for the 3 most recent versions
