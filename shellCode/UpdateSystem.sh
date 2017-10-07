#!/bin/bash
#/bin/bash/
set -o errexit #如果命令运行失败让脚本退出执行
set -o nounset #若有用未设置的变量即让脚本退出执行
#gedit /etc/apt/sources.list
sudo -S su -c "echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free' > /etc/apt/sources.list"
sudo su -c "echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list"
sudo apt-get update 
sudo apt-get upgrade -y 
echo "google" | sudo apt-get dist-upgrade -y


#sudo dpkg --configure -a   
#dpkg: error processing package kali-linux-full (--configure):
# dependency problems - leaving unconfigured
#Errors were encountered while processing:
# king-phisher
# kali-linux-full



