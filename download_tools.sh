#!/bin/bash

# Edit your versions and OS here

OS="linux"
ARCH="amd64"

FZF_VERSION="0.25.0-${OS}_${ARCH}"

mkdir -p ./bin

if [ ! -f ./bin/fzf ]; 
then
    curl -L -o ./bin/fzf.tar.gz "https://github.com/junegunn/fzf/releases/download/0.25.0/fzf-${FZF_VERSION}.tar.gz" 
    tar xf "./bin/fzf.tar.gz" -C ./bin
    rm "./bin/fzf.tar.gz"
fi
