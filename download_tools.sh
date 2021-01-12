#!/bin/bash

# Edit your versions and OS here

OS="linux"
ARCH="amd64"
FZF_VERSION_NUMBER="0.25.0"
FZF_VERSION="${FZF_VERSION_NUMBER}-${OS}_${ARCH}"

mkdir -p ./bin

if [ ! -f ./bin/fzf ]; 
then
    curl -L -o ./bin/fzf.tar.gz "https://github.com/junegunn/fzf/releases/download/0.25.0/fzf-${FZF_VERSION}.tar.gz" 
    tar xf "./bin/fzf.tar.gz" -C ./bin
    rm "./bin/fzf.tar.gz"
fi

mkdir -p ./shell

if [ ! -f ./shell/completion.bash ];
then
    curl -L -o ./shell/completion.bash "https://raw.githubusercontent.com/junegunn/fzf/${FZF_VERSION_NUMBER}/shell/completion.bash"
fi

if [ ! -f ./shell/key-bindings.bash ];
then
    curl -L -o ./shell/key-bindings.bash "https://raw.githubusercontent.com/junegunn/fzf/${FZF_VERSION_NUMBER}/shell/key-bindings.bash"
fi