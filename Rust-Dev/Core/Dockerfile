## This version is OK but may need some reorganisation later.
FROM debian:testing
MAINTAINER Yann Dupont <Yann@objoo.org>

RUN apt update && apt dist-upgrade -y
RUN apt install -y curl file sudo clang 
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
