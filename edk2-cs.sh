#!/bin/bash

## Cscope generate file for arm TF

set -ex

CODE=`pwd`

pushd /

find $CODE                         \
       -path $CODE/.git -prune -o      \
       -path $CODE/Tools/.git -prune -o      \
       -path $CODE/HwPkg/.git -prune -o      \
       -path $CODE/OpenPlatformPkg/.git -prune -o      \
       -path $CODE/edk2-platforms/.git -prune -o      \
       -path $CODE/edk2-non-osi/.git -prune -o      \
       -path $CODE/uefi-tools/.git -prune -o      \
       -path $CODE/TrustedFirmware -prune -o      \
       -path $CODE/tf -prune -o      \
       -path $CODE/EdkCompatibilityPkg -prune -o      \
       -path $CODE/Build -prune -o    \
       -path $CODE/Conf -prune -o    \
       -path $CODE/CryptoPkg/Library/OpensslLib/openssl -prune -o    \
       \( \
         -type f \
         ! -path "$CODE/*cscope*"    \
         \( \
           -iname *.c -o \
           -iname *.h -o \
           -iname *.s -o \
           -iname *.inf -o \
           -iname *.dsc -o \
           -iname *.fdf -o \
           -iname *.dec -o \
           -iname *.txt -o \
           -iname *.vfr -o \
           -iname *.asl -o \
           -iname *.aslc -o \
           -iname *.uni \
         \) \
         -print \
       \) \
       > $CODE/cscope.files

popd
cscope -k -C -b -q



