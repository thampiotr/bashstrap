#!/bin/bash

set -e -x

docker run -v `pwd`:/portable --interactive --tty ubuntu