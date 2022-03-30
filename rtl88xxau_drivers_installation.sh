#!/bin/bash
#coding: utf-8

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

if [[ $(id -u) -ne 0 ]]; then
	echo -e "\n${redColour}You must execute as root!${endColour}\n"
	exit 1
fi

trap ctrl_c INT

function ctrl_c(){
	echo -e "\n${redColour}Exiting...${endColour}\n"
	exit 1
}

# Update and upgrade packages and dist
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y

# Component installations required

apt-get install realtek-rtl88xxau-dkms -y && apt-get install dkms -y

# Clone drivers oficial repo

git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au/
make
make install

# Reboot to apply changes
echo -e "\n${greenColour}[+] Installation completed${endColour}\n"
echo -e "\n${greenColour}Your system will reboot...${endColour}\n"
sleep 3
reboot
