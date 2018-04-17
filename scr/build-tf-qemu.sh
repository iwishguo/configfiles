#!/bin/bash

set -ex

export PATH=~/gcc/gcc-linaro-aarch64-linux-gnu/bin:$PATH
export CROSS_COMPILE=aarch64-linux-gnu-
make PLAT=qemu clean
make PLAT=qemu ARM_GIC_ARCH=3 DEBUG=0 V=1
make PLAT=qemu ARM_GIC_ARCH=3 DEBUG=0 V=1 fip BL33=/home/g00179230/tianocore/edk2/Build/ArmVirtQemu-AARCH64/DEBUG_GCC5/FV/QEMU_EFI.fd
