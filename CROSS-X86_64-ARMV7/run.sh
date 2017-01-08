#!/usr/bin/env bash
apt install qemu-user-static
docker run -v /mnt/git:/mnt/git -it objoo/x86-armv7-dev
