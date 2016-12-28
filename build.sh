echo -e "Making OnePlus 3 kernel\n"
export PATH=$PATH:/opt/toolchain/lin621/bin/
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
make msm-perf_defconfig

make -j5

# modules
find ./ -type f -name '*.ko' -exec cp -f {} ../zip/system/lib/modules/ \;

# copy zImage
cp -f arch/arm64/boot/Image.gz-dtb ../zip/kernel/zImage
ls -l ../zip/kernel/zImage
cd ../zip
zip -r -9 op3_vN.zip * > /dev/null
mv op3_vN.zip ../
