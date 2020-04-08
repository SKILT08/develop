#!bin/bash
#By c4md
clear
echo -e "\033[32mCreated by Artyom(c4md/SKILT)"
tput sgr0
#echo -e "\033[0m\033[32mTEXT"
#tput sgr0
sleep 1;
echo -e "\033[0m\033[32mChecking your device..."
tput sgr0
sleep 3;
cd
echo -e "\033[0m\033[31mInstalling the necessary tools..."
sleep 10;
echo -e "\033[0m\033[32m"
apt-get install adb && apt-get install android-sdk-platform-tools && apt-get install git-core && apt-get install ark && apt-get install tar && apt-get install make && apt-get install gnupg && apt-get install flex && apt-get install bison && apt-get install gperf && apt-get install build-essential && apt-get install zip && apt-get install curl && apt-get install zlib1g-dev && apt-get install gcc-multilib && apt-get install g++-multilib && apt-get install libc6-dev-i386 && apt-get install lib32ncurses5-dev && apt-get install x11proto-core-dev && apt-get install libx11-dev && apt-get install lib32z-dev && apt-get install libgl1-mesa-dev && apt-get install libxml2-utils && apt-get install xsltproc && apt-get install unzip && apt install wget
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[31mInstalling toolchain..."
sleep 8;
echo -e "\033[0m\033[32m"
mkdir creator
cd creator
wget https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/aarch64-linux-gnu/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu.tar.xz
echo -e "\033[0m\033[31mDone."
tput sgr0
sleep 1;
echo -e "\033[0m\033[31mUnpacking toolchain..."
sleep 5;
echo -e "\033[0m\033[32m"
tar xf gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu.tar.xz
echo -e "\033[0m\033[31mDone."
tput sgr0
sleep 3;
echo -e "\033[0m\033[32m"
echo -e "\033[0m\033[32mEnter the link to your kernel. Example: https://github.com/Nick89786/android_kernel_xiaomi_msm8917/ , https://github.com/LeEcoDevs/android_kernel_leeco_msm8976/ . Warning! If you have </tree/> in the link, then please indicate </tree/> < -b > instead. Example: Was: https://github.com/LeEcoDevs/android_kernel_leeco_msm8976/tree/lineage-16.0.
Now: https://github.com/LeEcoDevs/android_kernel_leeco_msm8976/ -b lineage-16.0"
read kernel
sleep 4;
echo -e "\033[0m\033[32mOk. Enter the code name of your phone. If you do not know this, enter in the browser: <code of your device> code name. Example: rolex, s2."
read codename
sleep 4;
echo -e "\033[0m\033[32mPlease enter the number of cores of your processor."
read coreq
let "core = coreq + 1"
sleep 5;
echo -e "\033[0m\033[31mNow we will download your kernel. Wait."
tput sgr0
echo -e "\033[0m\033[32m"
sleep 5;
git clone $kernel kernel
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[32m"
sleep 2;
echo -e "\033[0m\033[31mWriting  the neccesary code to your .bashrc..."
echo -e "\033[0m\033[32m"
sleep 4;
cat /root/.bashrc
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/root/kernel_dev/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
EOF
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[32mUpdating .bashrc..."
source /root/.bashrc
echo -e "\033[0m\033[31mDone."
tput sgr0
cd
cd creator/kernel
echo -e "\033[0m\033[31mPatching aircrack-ng..."
sleep 5;
echo -e "\033[0m\033[32m"
wget http://patches.aircrack-ng.org/mac80211.compat08082009.wl_frag+ack_v1.patch
patch -p1 < mac80211.compat08082009.wl_frag+ack_v1.patch
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[31mMake clean..."
sleep 5;
echo -e "\033[0m\033[32m"
make clean
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[31mMake mrpropper..."
sleep 5;
echo -e "\033[0m\033[32m"
make mrpropper
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[31mShare defconfig..."
sleep 3;
cd arch/arm64/configs
defconfig=`find *$codename*`
echo -e "\033[0m\033[31mDone. \033[32mYour defconfig is $defconfig."
tput sgr0
cd ../ && cd ../ && cd ../
echo -e "\033[0m\033[32mMaking your defconfig..."
tput sgr0
sleep 5;
echo -e "\033[0m\033[32m"
make $defconfig
echo -e "\033[0m\033[31mDone."
tput sgr0
echo -e "\033[0m\033[31mNow you can make your config."
tput sgr0
sleep 5;
menuconfig
echo -e "\033[0m\033[31mDone."
echo -e "\033[0m\033[32mWait, please..."
tput sgr0
sleep 5;
echo -e "\033[0m\033[32m"
make -j$core
echo -e "\033[0m\033[32mBuild your kernel successfully completed."
tput sgr0
