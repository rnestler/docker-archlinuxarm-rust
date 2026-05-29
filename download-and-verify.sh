#!/bin/bash

set -euo pipefail

curl -L "http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz" -o ArchLinuxARM-aarch64-latest.tar.gz
curl -L "http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz.sig" -o ArchLinuxARM-aarch64-latest.tar.gz.sig

gpg --import archlinuxarm.gpg
gpg --verify ArchLinuxARM-aarch64-latest.tar.gz.sig ArchLinuxARM-aarch64-latest.tar.gz
