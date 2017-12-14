#!/bin/bash
#刷新dns缓存：
#sudo /etc/init.d/networking restart
#sudo /etc/init.d/nscd restart

if [ ! -d "~/Documents" ];then
	mkdir "~/Documents"
fi

chmod ~/code/Network/ul
~/code/Network/ul > ~/Documents/nohup.out  &
bash ~/code/Network/start.sh >> ~/Documents/nohup.out &

