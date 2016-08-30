#!/usr/bin/env bash
echo "Now, ssh -o port=2222 -X atom@localhost"
docker run -v /mnt/git:/mnt/git -it -p 2222:22 objoo/dev-rust-cross-atom

