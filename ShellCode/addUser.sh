#!/bin/bash
read -p "Pleas input your create user name:" name

sudo useradd -m $name

sudo passwd $name

sudo usermod -a -G sudo $name

sudo chsh -s /bin/bash $name

sudo id $name

read -p "If your want to restart system now? (y or n) : " y

if  [ "$y"x = "y"x  ];then
	sudo shutdown -r now
else
	echo "Process is stop"
fi


