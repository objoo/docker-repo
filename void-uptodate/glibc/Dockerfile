## This version is OK but may need some reorganisation later.
FROM voidlinux/voidlinux
MAINTAINER Yann Dupont <Yann@objoo.org>

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

## First run updates xbps
RUN xbps-install -Suy
## Second run updates all
RUN xbps-install -Suy
