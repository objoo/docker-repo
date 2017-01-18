#!/usr/bin/env bash
docker build --build-arg HTTPS_PRPXY=$HTTPS_PROXY --build-arg HTTP_PROXY=$HTTP_PROXY --build-arg https_proxy=$https_proxy --build-arg http_proxy=$http_proxy $* -t objoo/voidlinux .
