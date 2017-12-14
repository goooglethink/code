#!/bin/bash
##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified: 2017-10-22 07:06
#Filename: macChang.sh
#Description:
##############################################
#!/bin/bash

#关闭网卡
echo "google" | sudo -S ifconfig wlan0 down

#生成随机mac
sudo macchanger -r wlan0

#开启网卡
sudo ifconfig wlan0 up

sudo service network-manager restart

