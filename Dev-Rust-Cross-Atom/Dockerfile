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

#RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=beta
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

RUN /home/atom/.cargo/bin/rustup target add x86_64-unknown-linux-musl
RUN /home/atom/.cargo/bin/rustup target add armv7-unknown-linux-gnueabihf


## lastest atom editor
USER root
RUN curl -LsSf https://atom.io/download/deb > latest-atom.deb
## first RUN will be incomplete - dependency fails
RUN dpkg -i --force-all ./latest-atom.deb

## Now install dependancies
RUN apt -y -f install

### fix pour apm
USER atom
RUN apm config set https-proxy $HTTPS_PROXY
RUN apm config set strict-ssl=false
ENV ATOM_NODE_URL=http://gh-contractor-zcbenz.s3.amazonaws.com/atom-shell/dist

## Rust language support in atom
RUN apm install language-rust

## SSH
USER root
RUN apt install -y openssh-server
EXPOSE 22

RUN mkdir /var/run/sshd
RUN chmod 0755 /var/run/sshd


## speeding up remote connexions
RUN echo "Ciphers arcfour" >> /etc/ssh/sshd_config

RUN apt install -y clang

## fix : libasound2 missing
RUN apt install -y libasound2

### Necessary for arm cross compilation

RUN apt install -y gcc-arm-linux-gnueabihf 

USER atom

RUN echo [target.armv7-unknown-linux-gnueabihf] >>  ~/.cargo/config
RUN echo linker = \"arm-linux-gnueabihf-gcc\" >>  ~/.cargo/config  
## bash by default
USER root

#Fix
RUN apt install -y libxss1 libxkbfile1

RUN chsh atom -s /bin/bash

ENTRYPOINT /usr/sbin/sshd -D
