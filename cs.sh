#!/bin/bash

## Generic cscope generate file

set -ex

CODE=`pwd`

pushd /

find $CODE                         \
       -type f                     \
       ! -path "$CODE/*cscope*"    \
       ! -path "$CODE/.git*"       \
       > $CODE/cscope.files

popd
cscope -k -C -b -q



