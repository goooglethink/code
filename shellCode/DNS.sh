#!/bin/bash

sudo -S bash -c 'cat code/linuxSettings/dnsconf.txt > /etc/resolv.conf'
sudo chattr +i /etc/resolv.conf

#这个+i的选项就是为文件 /etc/resolv.conf 添加了写保护，因此任何人都不可以修改

#需要取消写保护，使用下面的命令：
#sudo chattr -i /etc/resolv.conf
