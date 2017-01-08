## This version is OK but may need some reorganisation later.
FROM objoo/rust-core-atom
MAINTAINER Yann Dupont <Yann@objoo.org>

## New targets

USER atom

RUN /home/atom/.cargo/bin/rustup target add x86_64-unknown-linux-musl
RUN /home/atom/.cargo/bin/rustup target add armv7-unknown-linux-gnueabihf
RUN /home/atom/.cargo/bin/rustup target add armv7-unknown-linux-musleabihf
RUN /home/atom/.cargo/bin/rustup target add wasm32-unknown-emscripten
RUN /home/atom/.cargo/bin/rustup target add armv7-unknown-linux-gnueabihf

RUN /home/atom/.cargo/bin/rustup target add mips-unknown-linux-gnu
RUN /home/atom/.cargo/bin/rustup target add mips-unknown-linux-musl


### Necessary for arm cross compilation

USER root

RUN apt install -y gcc-arm-linux-gnueabihf 
RUN apt install -y gcc-mips-linux-gnu
RUN apt install -y gcc-mipsel-linux-gnu
USER atom

RUN echo [target.armv7-unknown-linux-gnueabihf] >>  ~/.cargo/config
RUN echo linker = \"arm-linux-gnueabihf-gcc\" >>  ~/.cargo/config  
RUN echo [target.mips-unknown-linux-gnu] >>  ~/.cargo/config
RUN echo linker = \"mips-linux-gnu-gcc\" >>  ~/.cargo/config  
RUN echo [target.mips-unknown-linux-musl] >>  ~/.cargo/config
RUN echo linker = \"mips-linux-gnu-gcc\" >>  ~/.cargo/config  

USER root

ENTRYPOINT /usr/sbin/sshd -D
