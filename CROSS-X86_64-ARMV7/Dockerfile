FROM armv7/armhf-debian
MAINTAINER Yann Dupont <Yann@objoo.org>

## You should use ./run.sh

COPY qemu-arm-static /usr/bin/qemu-arm-static
COPY qemu-arm /usr/share/binfmts/qemu-arm

RUN apt update && apt dist-upgrade -y

RUN apt install -y git \
	gcc \
	make  \
	ncurses-dev \
	autoconf \
	automake \
	flex \
	bison \
	texinfo \
	ccache \
	device-tree-compiler \
	bc \
	kernel-package \
	libssl-dev

RUN ln -s /usr/bin/ccache /usr/local/bin/gcc
RUN ln -s /usr/bin/ccache /usr/local/bin/g++
RUN ln -s /usr/bin/ccache /usr/local/bin/cc
RUN ln -s /usr/bin/ccache /usr/local/bin/cc++

ENV http_proxy $http_proxy
ENV https_proxy $https_proxy
ENV ftp_proxy $ftp_proxy
ENV socks_proxy $socks_proxy
ENV no_proxy $no_proxy

ENV HTTP_PROXY $HTTP_PROXY
ENV HTTPS_PROXY $HTTPS_PROXY
ENV FTP_PROXY $FTP_PROXY 
ENV SOCKS_PROXY $SOCKS_PROXY
ENV NO_PROXY $NO_PROXY

## Now some host native tools to speed up process
RUN dpkg --add-architecture amd64
RUN apt update

## should permit to use native X86_64 cross compiler to mimic native arm
## compiler, only faster...

RUN apt install -y gcc-arm-none-eabi:amd64

