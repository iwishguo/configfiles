#!/bin/bash

set -ex

./Foundation_Platform                   \
--cores=4                                       \
--secure-memory                                 \
--visualization                                 \
--gicv3                                         \
--data="bl1.bin"@0x0             \
--data="fip.bin"@0x08000000      \
--data="fvp-foundation-psci.dtb"@0x82000000             \
#--data=""@0x80080000   \
#--data=""@0x84000000
