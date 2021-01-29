#!/bin/bash
echo ""
clear
echo ""
echo ""
 echo -e $'\e[1;33m|==========================================================|\e[0m'
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m Installing Please Have Patience    \e[0m'
 echo -e $'\e[1;33m|==========================================================|\e[0m'
sleep 8
clear
echo ""
echo ""
echo -e $'\e[1;33m|================================================|\e[0m'
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m       >> DOWNLOAD REQUIREMENTS >> \e[0m'
echo -e $'\e[1;33m|================================================|\e[0m'
sudo apt-get install apache2 -y
apt install php -y
apt install jq -y
apt install tail -y
apt install curl -y
apt-get update
apt full-upgrade -y
#Python
apt-get install python -y
apt-get install tor -y
#facebook-dir
if [ -d facebook ]; then
        echo "Already Directory facebook exists.[✔]"
else
	mkdir facebook
	cd facebook
	wget raw.githubusercontent.com/Sup3r-Us3r/scripts/master/fb-brute.pl
	cd ..
fi



