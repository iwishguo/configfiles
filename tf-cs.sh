#!/bin/bash

## Cscope generate file for arm TF

set -ex

CODE=`pwd`

pushd /

find $CODE                         \
       -type f                     \
       ! -path "$CODE/*cscope*"    \
       ! -path "$CODE/.git*"       \
       ! -path "$CODE/build/*"     \
       > $CODE/cscope.files

popd
cscope -k -C -b -q



