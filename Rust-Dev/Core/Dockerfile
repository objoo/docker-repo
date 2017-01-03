## This version is OK but may need some reorganisation later.
FROM debian:testing
MAINTAINER Yann Dupont <Yann@objoo.org>

RUN apt update && apt dist-upgrade -y
RUN apt install -y curl file sudo
ENV http_proxy $http_proxy
ENV https_proxy $http_proxy
ENV ftp_proxy $http_proxy
ENV socks_proxy $http_proxy
ENV no_proxy $no_proxy

ENV HTTP_PROXY $http_proxy
ENV HTTPS_PROXY $http_proxy
ENV FTP_PROXY $http_proxy
ENV SOCKS_PROXY $http_proxy
ENV NO_PROXY $http_proxy

RUN useradd -m atom
RUN echo "root:!Objoo!" | chpasswd
RUN echo "atom:!Objoo!" | chpasswd

## latest Rust

USER atom

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

USER root
RUN apt install -y openssh-server
EXPOSE 22

RUN mkdir /var/run/sshd
RUN chmod 0755 /var/run/sshd


## speeding up remote connexions
RUN echo "Ciphers aes128-gcm@openssh.com" >> /etc/ssh/sshd_config

RUN chsh atom -s /bin/bash

ENTRYPOINT /usr/sbin/sshd -D
