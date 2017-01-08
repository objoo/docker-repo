#!/usr/bin/env bash
docker build --build-arg https_proxy=$http_proxy --build-arg http_proxy=$http_proxy $* -t objoo/voidlinux-musl .
