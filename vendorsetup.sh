#!/bin/bash

if [[ "$TARGET_PRODUCT" == "twrp_RMX3235" ]]; then
    cd ./vendor/twrp/config/ || exit
    sed -i '/^ifeq/,$d' BoardConfigTWRP.mk
    cd ~- || exit
fi