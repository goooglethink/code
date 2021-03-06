##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified:2018-01-03 14:20
#Filename:AboutPC.sh
#Description:
##############################################
# /bin/bash
echo "google" | sudo -S dmidecode -t1|grep Name
sudo dmidecode -t1 | grep Serial
sudo dmidecode | grep CPU|grep Version
sudo dmidecode | grep CPU|grep Version|cut -d " " -f 2-|uniq
sudo cat /proc/meminfo|head -n 2

sudo fdisk -l|grep "Disk /dev/sda"|grep -v GPT
sudo fdisk -l|grep "Disk /dev/sdb"|grep -v GPT
sudo fdisk -l|grep "Disk /dev/sdc"|grep -v GPT
sudo fdisk -l|grep "Disk /dev/sdd"|grep -v GPT

sudo smartctl -a /dev/sda | grep "test result"
sudo smartctl -a /dev/sdb | grep "test result"
sudo smartctl -a /dev/sdc | grep "test result"
sudo smartctl -a /dev/sdd | grep "test result"

sudo cat /sys/class/dmi/id/product_uuid

sudo lspci | grep -E "VGA|3D"

cat /etc/os-release | grep "VERSION"
cat /etc/os-release | grep "NAME"

uname -a

