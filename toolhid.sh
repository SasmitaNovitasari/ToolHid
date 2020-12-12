#!/bin/bash
n='\e[0m'

red='\e[0;31m'
hijau='\e[0;32m'
kuning='\e[0;33m'
biru='\e[0;34m'
ungu='\e[0;35m'
cyan='\e[0;36m'

redx='\e[1;31m'
hijaux='\e[1;32m'
kuningx='\e[1;33m'
birux='\e[1;34m'
ungux='\e[1;35m'
cyanx='\e[1;36m'
cyanx='\e[1;36m'

clear
figlet -f banner "Hidhunt"
echo -e $birux"=========================================="
echo -e $ungux"Dibuat : Ivander"
echo -e $redx"Pesan  : Boleh recode asal kasi credit nya"
echo -e $birux"==========================================\n"

echo -e $kuningx"Saat menginstall tool dibawah akan agak\nlama karena juga mengupdate pkg atau tool\nyg dibutuhkan untuk jaga jaga.\nTerimakasih telah menggunakan script ini:*\n"

echo -e $cyanx"\nPesan : "
echo -e $cyanx"√ Pilih nomor tool yg akan di install"
echo -e $cyanx"√ Pasti cari tool buat crack kan"
echo -e $cyanx"√ Serah lu penting bukan salah gw\n\n"

echo -e $n"Daftar Tools : "

select nm in TermuxOS Terkey Edit_prompt Metasploit Termux-launcher Phising-sosmed Exit
do
case $nm in
	Phising-sosmed )
	echo -e $hijau"\ninstalling shellphish..."$n
	sleep 4
	pkg update && pkg upgrade
	pkg install openssh
	pkg install git
	pkg install wget
	pkg install curl
	git clone https://github.com/thelinuxchoice/shellphish.git
	;;

	TermuxOS )
	echo -e $hijau"\ninstalling OS Termux$n"
	sleep 4
	pkg update && pkg upgrade
	pkg install python2 -y
	pkg install git -y
	git clone https://github.com/jaksa976/TermuxOS
	echo -e $hijau"=========================================="
	echo -e "=========================================="$n
	;;

	Terkey )
	echo -e $hijau"\ninstalling terkey"
	sleep 4
	pkg update && pkg upgrade -y
	pkg install python -y
	pkg install git -y
	git clone https://github.com/karjok/terkey
	echo -e $hijau"=========================================="
	echo -e "=========================================="$n
	;;

	Edit_prompt )
	echo -e $hijau"\nmengedit prompt"$n
	sleep 4
	pkg update && pkg upgrade
	pkg install nano
	nano ../usr/etc/bash.bashrc
	echo -e $hijau"=========================================="
	echo -e "=========================================="$n
	;;

	Metasploit )
	echo -e $hijau"\nmenginstall metasploit..."
	sleep 4
	pkg update && pkg upgrade
	pkg install ruby
	pkg install unstable-repo
	pkg install metasploit
	echo -e $hijau"=========================================="
	echo -e "=========================================="$n
	;;

	Termux-launcher )
	echo -e $hijau"\nmenginstall termux launcher"$n
	pkg update && pkg upgrade
	pkg install git
	git clone https://github.com/amsitlab/termuxlau[ncher
	cd termuxlauncher
	chmod +x build.sh
	./build.sh
	echo -e $hijau"=========================================="
	echo -e $hijau"==========================================\n"
	echo -e $redx"Install apk yg telah siap di /sdcard/download/BuildAPK"
	echo -e $redx"Buka termuxlauncher"
	echo -e $redx"Copas text di bawah"
	echo -e $kuningx'echo "source ${EXTERNAL_STORAGE}/termuxlauncher/.apps-launcher">>~/.bashrc'
	echo -e $red"Pastikan folder termuxlauncher ada di sdcard default hp mu"
	;;

	Exit )
	echo -e $hijau"=========================================="
	echo -e "\n\e[0;33mMksh udh mampir gan"
	sleep 1
	echo -e "\e[0;33mGk usah komen klo gk bisa bikin script"
	sleep 1
	echo -e "\e[0;33mGood-bye Losser!"
	sleep 1
	echo -e "\e[0;33mAssalamualaikum.wr.wb"
	sleep 1
	echo -e "=========================================="$n
	exit
	;;
esac
done
