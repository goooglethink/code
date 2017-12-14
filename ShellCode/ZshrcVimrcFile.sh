#/bin/bash/
#gedit ./.bashrc
#sudo gedit /root/.bashrc 


#-f参数判断$zshrc是否存在 
if [ ! -f "~/.zshrc" ];
then
	touch "~/.zshrc"
#-f参数判断$vimrc是否存在 
elif [ ! -f "~/.vimrc" ];
then
	touch "~/.vimrc"
fi

bash -c 'cat ~/code/SettingsFile/zshrc > ~/.zshrc'
bash -c 'cat ~/code/SettingsFile/vimrc > ~/.vimrc'

#设置默认shell为zsh
chsh -s $(which zsh)

#检查是否设置成功
echo $SHELL

#查看我们的电脑上是否安装了zsh命令行
zsh --version
