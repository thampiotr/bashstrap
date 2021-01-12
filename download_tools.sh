#!/bin/bash

FZF_VERSION="0.25.0-linux_amd64"

mkdir -p ./bin

if [ ! -f ./bin/fzf ]; 
then 
    curl -L -o ./bin/fzf.tar.gz "https://github.com/junegunn/fzf/releases/download/0.25.0/fzf-$FZF_VERSION.tar.gz" 
    tar xf "./bin/fzf.tar.gz" -C ./bin
    rm "./bin/fzf.tar.gz"
fi


