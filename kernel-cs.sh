#!/bin/bash

## Generic cscope generate file

set -ex

CODE=`pwd`

pushd /

find $CODE                         \
       -type f                     \
       ! -path "$CODE/*cscope*"    \
       ! -path "$CODE/.git*"       \
       ! -path "$CODE/*.o"       \
       ! -path "$CODE/*.o.*"       \
       ! -path "$CODE/*.mod"       \
       ! -path "$CODE/*/.*"       \
       ! -path "$CODE/*.dtb"       \
       ! -path "$CODE/*.dts"       \
       ! -path "$CODE/*.dtsi"       \
       ! -path "$CODE/*.order"       \
       ! -path "$CODE/Documentation/*"       \
       > $CODE/cscope.files

popd
cscope -k -C -b -q



