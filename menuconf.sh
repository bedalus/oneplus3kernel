echo -e "Making OnePlus 3 kernel\n"
export PATH=$PATH:/opt/toolchain/lin531/bin/
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-

make menuconfig .config

