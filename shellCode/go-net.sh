#!/bin/bash
#for k in 1  
#do
#	nohup  gnome-terminal -t "gogo" -x bash ~/code/go-net/start.sh & 
#	nohup  gnome-terminal -t "ul" -x ~/code/go-net/ul & 
#done
#-t 为打开终端的标题，便于区分
#-x 后面的为要在打开的终端中执行的脚本，根据需要自己修改

#刷新dns缓存：
#sudo /etc/init.d/networking restart
#sudo /etc/init.d/nscd restart

if [ ! -d "/home/google/Documents" ];then
	mkdir "/home/google/Documents"
fi

chmod +x /home/google/code/go-net/ul
#nohup /home/google/code/go-net/ul & > nohup.out & 
#nohup bash /home/google/code/go-net/start.sh & >> nohup.out & 
/home/google/code/go-net/ul > ~/Documents/nohup.out  &
bash /home/google/code/go-net/start.sh >> ~/Documents/nohup.out &

