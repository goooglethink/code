#/bin/bash/
#gedit ./.bashrc
#sudo gedit /root/.bashrc 


#-f参数判断$zshrc是否存在 
if [ ! -f "/home/google/.zshrc" ];
then
	touch "/home/google/.zshrc"
#-f参数判断$vimrc是否存在 
elif [ ! -f "/home/google/.vimrc" ];
then
	touch "/home/google/.vimrc"
fi

sudo -S bash -c 'cat code/linuxSettings/zshrc.txt > /home/google/.zshrc'
#sudo bash -c 'cat code/linuxSettings/zshrc.txt > /root/.zshrc'
sudo bash -c 'cat code/linuxSettings/vimrc.txt > /home/google/.vimrc'


#emulate bash

#设置默认shell为zsh
chsh -s $(which zsh)

#检查是否设置成功
echo $SHELL

#查看我们的电脑上是否安装了zsh命令行
zsh --version
