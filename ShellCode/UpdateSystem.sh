#!/bin/bash
#/bin/bash/
#set -o errexit #如果命令运行失败让脚本退出执行
#set -o nounset #若有用未设置的变量即让脚本退出执行
#gedit /etc/apt/sources.list
sudo -S su -c "echo 'deb http://mirrors.neusoft.edu.cn/kali kali-rolling main contrib non-free' > /etc/apt/sources.list"
sudo su -c "echo '# deb-src http://mirrors.neusoft.edu.cn/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list"

#deb http://http.kali.org/kali kali-rolling main contrib non-free
#deb-src http://http.kali.org/kali kali-rolling main contrib non-free

echo "google" | sudo -S su -c "apt-get update"
if [ $? -ne 0 ];then
	while :
	do
	    echo "google" | sudo -S su -c "apt-get --fix-missing update"
	done
else
    echo "update succeed"
fi

echo "google" | sudo -S su -c "apt-get install aptitude -y"

echo "google" | sudo -S su -c "aptitude update"

echo "google" | sudo -S su -c "aptitude dist-upgrade -y"
if [ $? -ne 0 ];then
	while :
	do
	    echo "google" | sudo -S su -c "aptitude dist-upgrade -y"
	done
else
    echo "dist-upgrade succeed"
fi


#sudo su -c "dpkg --configure -a" 
#(ctrl+alt+space)(yes)
#dpkg: error processing package kali-linux-full (--configure):
# dependency problems - leaving unconfigured
#Errors were encountered while processing:
# king-phisher
# kali-linux-full

#key error
#wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
#sudo apt install ./kali-archive-keyring_2018.1_all.deb
