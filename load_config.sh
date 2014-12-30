#!/bin/bash

DEFCONFIG_FILE=$1

if [ -z "$DEFCONFIG_FILE" ]; then
    echo "Need defconfig file as first input param"
    exit -1
fi

if [ ! -e arch/arm/configs/$DEFCONFIG_FILE ]; then
    echo "No such file : arch/arm/configs/$DEFCONFIG_FILE"
    exit -1
fi

# make .config from input file
cp arch/arm/configs/$DEFCONFIG_FILE ./.config
echo "[load_config]: $DEFCONFIG_FILE placed as .config in $(pwd)"
