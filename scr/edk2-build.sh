#!/bin/bash

set -ex

export LC_CTYPE=C
export GCC5_AARCH64_PREFIX=aarch64-linux-gnu-

NUM_CPUS=$((`getconf _NPROCESSORS_ONLN` + 2))

export WORKSPACE=`pwd`
export EDK_TOOLS_PATH=$PWD/BaseTools
PACKAGES_PATH=$PWD

if [ -d $PWD/edk2-platforms ]; then
  export PACKAGES_PATH=$PACKAGES_PATH:$PWD/edk2-platforms
fi
if [ -d $PWD/edk2-non-osi ]; then
  export PACKAGES_PATH=$PACKAGES_PATH:$PWD/edk2-non-osi
fi

make -C BaseTools
arg=$*
shift $#
source edksetup.sh

build -n $NUM_CPUS -t GCC5 $arg

