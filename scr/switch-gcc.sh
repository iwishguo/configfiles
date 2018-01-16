#!/bin/bash

#set -ex

LOCATION=/usr/bin
pushd $LOCATION
GCC_VERSION=$1

LINKS=(
    'aarch64-linux-gnu-cpp'
    'aarch64-linux-gnu-gcc'
    'aarch64-linux-gnu-gcc-ar'
    'aarch64-linux-gnu-gcc-nm'
    'aarch64-linux-gnu-gcc-ranlib'
    'aarch64-linux-gnu-gcov'
    'aarch64-linux-gnu-gcov-tool'
    )

for link in ${LINKS[@]}; do
  TARGET=${link}-$GCC_VERSION
  if [ ! -f $TARGET ]; then
    echo "file \"$TARGET\" does not exist!"
    continue
  fi
  ln -sf $TARGET $link
done

popd

