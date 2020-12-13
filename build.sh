#!/bin/bash
./clean.sh
echo "for ubuntu 2010"
export DTC_EXT=dtc
export CROSS_COMPILE=~/桌面/Toolchain/google_gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export ARCH=arm64
export SUBARCH=arm64
ls arch/arm64/configs
read -p "choice your config:" config
make O=out $config
make O=out -j16

echo "Build Kernel Finsh "
