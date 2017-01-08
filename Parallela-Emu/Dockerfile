## This version is OK but may need some reorganisation later.
FROM debian:testing
MAINTAINER Yann Dupont <Yann@objoo.org>

RUN apt update && apt dist-upgrade -y
RUN apt install -y curl 
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

## latest Rust


RUN curl https://github.com/adapteva/epiphany-sdk/releases/download/esdk-2016.11/esdk.2016.11.x86_64-nocross.tar.gz -sSfL# -o esdk.2016.11.x86_64-nocross.tar.gz
RUN tar xvfz esdk.2016.11.x86_64-nocross.tar.gz
