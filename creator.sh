#!bin/bash
#By c4md
echo -e "\033[32mCreated by Artyom(c4md/SKILT)"
tput sgr0
#echo -e "\033[0m\033[32mTEXT"
#tput sgr0
sleep 1;
echo -e "\033[0m\033[32mChecking your device..."
tput sgr0
sleep 3;
cd
echo -e "\033[0m\033[32mInstalling the necessary tools..."
sleep 10;
apt-get install adb && apt-get install android-sdk-platform-tools && apt-get install git-core && apt-get install ark && apt-get install tar && apt-get install make && apt-get install gnupg && apt-get install flex && apt-get install bison && apt-get install gperf && apt-get install build-essential && apt-get install zip && apt-get install curl && apt-get install zlib1g-dev && apt-get install gcc-multilib && apt-get install g++-multilib && apt-get install libc6-dev-i386 && apt-get install lib32ncurses5-dev && apt-get install x11proto-core-dev && apt-get install libx11-dev && apt-get install lib32z-dev && apt-get install libgl1-mesa-dev && apt-get install libxml2-utils && apt-get install xsltproc && apt-get install unzip && apt install wget
echo -e "\033[0m\033[32mDone."
tput sgr0
echo -e "\033[0m\033[32mInstalling toolchain..."
sleep 8;
mkdir creator
cd creator
wget https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/aarch64-linux-gnu/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu.tar.xz
echo -e "\033[0m\033[32mDone."
tput sgr0
sleep 1;
echo -e "\033[0m\033[32mUnpacking toolchain..."
sleep 5;
tar xf gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu.tar.xz
"\033[0m\033[32mDone."
tput sgr0
