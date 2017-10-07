#!/bin/bash
#for k in 1  
#do
#	nohup  gnome-terminal -t "gogo" -x bash ~/code/go-net/start.sh & 
#	nohup  gnome-terminal -t "ul" -x ~/code/go-net/ul & 
#done
#-t 为打开终端的标题，便于区分
#-x 后面的为要在打开的终端中执行的脚本，根据需要自己修改
#nohup bash /home/google/code/go-net/start.sh & >> nohup.out & 

if [ ! -d "/home/google/Documents" ];then
	mkdir "/home/google/Documents"
fi
bash /home/google/code/go-net/start.sh >> ~/Documents/nohup.out &


