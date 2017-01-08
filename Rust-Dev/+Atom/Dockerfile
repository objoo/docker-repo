## This version is OK but may need some reorganisation later.
FROM objoo/rust-core
MAINTAINER Yann Dupont <Yann@objoo.org>

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

USER root

## Rust language support in atom
RUN apm install language-rust

## fix : libasound2 missing
RUN apt install -y libasound2

#Fix
RUN apt install -y libxss1 libxkbfile1

RUN chsh atom -s /bin/bash

USER root
RUN apt install -y openssh-server
EXPOSE 22

RUN mkdir /var/run/sshd
RUN chmod 0755 /var/run/sshd


## speeding up remote connexions
RUN echo "Ciphers aes128-gcm@openssh.com" >> /etc/ssh/sshd_config

ENTRYPOINT /usr/sbin/sshd -D
