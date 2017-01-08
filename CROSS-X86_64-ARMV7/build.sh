#!/usr/bin/env bash
cp /usr/share/binfmts/qemu-arm .
cp /usr/bin/qemu-arm-static .
docker build --build-arg https_proxy=$http_proxy --build-arg http_proxy=$http_proxy $* -t objoo/x86-armv7-dev .
