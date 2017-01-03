#!/usr/bin/env bash
echo "Now, ssh -o port=2223 -X atom@localhost"
docker run -v /mnt/git:/mnt/git -it -p 2223:22 objoo/rust-core-atom

