#!/bin/bash

set -ex

NUM_CPUS=$((`getconf _NPROCESSORS_ONLN` + 2))

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j $NUM_CPUS


