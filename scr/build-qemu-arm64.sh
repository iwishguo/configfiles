#!/bin/bash

set -ex

./configure --prefix=$HOME/local --target-list=arm-softmmu,aarch64-softmmu
make -j9
make install

