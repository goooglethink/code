#!/bin/bash
#/bin/bash/
#set -o errexit #如果命令运行失败让脚本退出执行
#set -o nounset #若有用未设置的变量即让脚本退出执行
#gedit /etc/apt/sources.list
sudo -S su -c "echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free' > /etc/apt/sources.list"
sudo su -c "echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list"

sudo apt-get update
if [ $? -ne 0 ];then
	while :
	do
	    sudo apt-get --fix-missing update
	done
else
    echo "update succeed"
fi

sudo apt-get upgrade -y 
if [ $? -ne 0 ];then
	while :
	do
	    sudo apt-get --fix-missing upgrade
	done
else
    echo "upgrade succeed"
fi

echo "google" | sudo -S apt-get dist-upgrade -y
if [ $? -ne 0 ];then
	while :
	do
	    echo "google" | sudo -S apt-get --fix-missing dist-upgrade -y
	done
else
    echo "dist-upgrade succeed"
fi


#sudo dpkg --configure -a   (ctrl+alt+space)
#dpkg: error processing package kali-linux-full (--configure):
# dependency problems - leaving unconfigured
#Errors were encountered while processing:
# king-phisher
# kali-linux-full



