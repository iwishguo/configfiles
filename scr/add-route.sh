#!/bin/bash

set -ex

# Add route for VPN
sudo route add -net 10.0.0.0/8 gw 10.229.40.1
echo
route

