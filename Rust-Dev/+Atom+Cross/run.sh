#!/usr/bin/env bash
echo "Now, ssh -o port=2224 -X atom@localhost"
docker run -v /mnt/git:/mnt/git -it -p 2224:22 objoo/rust-cross-atom


