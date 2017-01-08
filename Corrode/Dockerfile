## This version is OK but may need some reorganisation later.
FROM debian:testing
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

RUN apt update && apt dist-upgrade -y
RUN apt install -y curl git ghc
RUN apt install -y cabal-install
RUN cabal update
RUN cabal install happy
RUN cabal install alex

RUN git clone https://github.com/jameysharp/corrode.git

WORKDIR corrode

RUN cabal install

