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
echo -e "\033[0m\033[32m"
sleep 5;
tar xf gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu.tar.xz
echo -e "\033[0m\033[31mDone."
tput sgr0
sleep 3
echo -e "\033[0m\033[32m"
echo -e "\033[0m\033[32mEnter the link to your kernel. Example: https://github.com/Nick89786/android_kernel_xiaomi_msm8917/ , https://github.com/LeEcoDevs/android_kernel_leeco_msm8976/ . Warning! If you have </tree/> in the link, then please indicate </tree/> < -b > instead. Example: Was: https://github.com/LeEcoDevs/android_kernel_leeco_msm8976/tree/lineage-16.0.
Now: https://github.com/LeEcoDevs/android_kernel_leeco_msm8976/ -b lineage-16.0"
tput sgr0
read kernel
sleep 4
echo -e "\033[0m\033[32mOk. Enter the code name of your phone. If you do not know this, enter in the browser: <code of your device> code name. Example: rolex, s2."
tput sgr0
read codename
sleep 5
echo -e "\033[0m\033[32Now we will download your kernel. Wait."
tput sgr0
sleep 5
git clone $kernel
echo -e "\033[0m\033[31Done."
tput sgr0
echo -e "\033[0m\033[32m"
sleep 2
