# docker-archlinuxarm-rust

[![Docker Pulls](https://img.shields.io/docker/pulls/rnestler/archlinuxarm-rust)](https://hub.docker.com/r/rnestler/archlinuxarm-rust)
[![GitHub Repo](https://img.shields.io/badge/github-repo-blue?logo=github)](https://github.com/rnestler/docker-archlinuxarm-rust)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/rnestler/docker-archlinuxarm-rust/publish-docker-images.yml)

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
