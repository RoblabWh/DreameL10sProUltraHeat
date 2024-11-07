#!/bin/sh

# init sysroot
mkdir sysroot

#extract dreame.vacuum.r2338_1527_fel.zip to sysroot
unzip dreame.vacuum.r2338_1527_fel.zip

#extract rootfs.img to sysroot
mkdir rootfs
sudo mount -o loop rootfs.img rootfs
sudo cp -r rootfs/* sysroot/
sudo umount rootfs

# clean
rm PUT_HERE_dreame.vacuum.r2338_1527_fel.zip_FROM_SCIEBO.MD
rm boot.img
rm check.txt
rm _dreame.vacuum.r2338_phoenixsuit.img
rm fastboot.exe
rm rootfs.img
rm _run.bat
rm _run.sh
rm toc1.img
rm dreame.vacuum.r2338_1527_fel.zip
rm -r rootfs

#chmod
sudo chown -R $USER sysroot

# download linaro sysroot
wget -O sysroot-glibc-linaro-2.23-2017.11-aarch64-linux-gnu.tar.xz https://releases.linaro.org/components/toolchain/binaries/6.4-2017.11/aarch64-linux-gnu/sysroot-glibc-linaro-2.23-2017.11-aarch64-linux-gnu.tar.xz
tar -xf sysroot-glibc-linaro-2.23-2017.11-aarch64-linux-gnu.tar.xz -C ./

# copy linaro sysroot to sysroot
sudo rsync -a sysroot-glibc-linaro-2.23-2017.11-aarch64-linux-gnu/ sysroot/

#clean
rm -r sysroot-glibc-linaro-2.23-2017.11-aarch64-linux-gnu
rm sysroot-glibc-linaro-2.23-2017.11-aarch64-linux-gnu.tar.xz

# download toolchain
mkdir toolchains
wget https://releases.linaro.org/components/toolchain/binaries/6.4-2017.11/aarch64-linux-gnu/gcc-linaro-6.4.1-2017.11-x86_64_aarch64-linux-gnu.tar.xz
tar -xf gcc-linaro-6.4.1-2017.11-x86_64_aarch64-linux-gnu.tar.xz -C ./toolchains

#clean
rm gcc-linaro-6.4.1-2017.11-x86_64_aarch64-linux-gnu.tar.xz
