#!/bin/bash

## Cscope generate file for arm TF

set -ex

CODE=`pwd`

pushd /

find $CODE                         \
       -type f                     \
       ! -path "$CODE/*cscope*"    \
       ! -path "$CODE/.git*"       \
       ! -path "$CODE/Tools/.git*"       \
       ! -path "$CODE/HwPkg/.git*"       \
       ! -path "$CODE/OpenPlatformPkg/.git*"       \
       ! -path "$CODE/edk2-platforms/.git*"       \
       ! -path "$CODE/edk2-non-osi/.git*"       \
       ! -path "$CODE/uefi-tools/.git*"       \
       ! -path "$CODE/TrustedFirmware*"       \
       ! -path "$CODE/tf*"       \
       ! -path "$CODE/EdkCompatibilityPkg*"       \
       ! -path "$CODE/Build/*"     \
       ! -path "$CODE/Conf/*"     \
       ! -path "$CODE/CryptoPkg/Library/OpensslLib/openssl*"     \
       > $CODE/cscope.files

popd
cscope -k -C -b -q



