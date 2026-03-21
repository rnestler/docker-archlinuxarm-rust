#!/bin/bash

set -euo pipefail

curl -L "http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz.md5" -o ArchLinuxARM-aarch64-latest.tar.gz.md5
curl -L "http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz" -o ArchLinuxARM-aarch64-latest.tar.gz

git diff --exit-code ArchLinuxARM-aarch64-latest.tar.gz.md5 || { echo "md5 changed. Probably the rootfs just got updated. Make sure it is authentic before committing"; exit 1; }

md5sum -c ArchLinuxARM-aarch64-latest.tar.gz.md5
