#!/bin/bash/
#=======================================================================================
# Bashrc
#=======================================================================================
# ./ 是指当前目录
# ~/ 是指用户目录

sudo -S sed -i '/1;36m/d;\/echo -e/d' /home/$USER/.bashrc
sudo sed -i '/1;36m/d;\/echo -e/d' /root/.bashrc
#bash -c 'cat ~/code/SettingsFile/bashrc >> ~/.bashrc'
#sudo bash -c 'cat ./code/SettingsFile/bashrc >> ~/.bashrc'

sudo sed -i '$a PS1="\\[\\e[1;36m\\]\\u\\[\\e[m\\]\\[\\e[1;33m\\]@\\[\\e[m\\]\\[\\e[1;31m\\]\\h\\[\\e[m\\]:\\w\\$"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m                                                    \\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m ██████╗  ██████╗  ██████╗  ██████╗ ██╗     ███████╗\\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m██╔════╝ ██╔═══██╗██╔═══██╗██╔════╝ ██║     ██╔════╝\\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m██║  ███╗██║   ██║██║   ██║██║  ███╗██║     █████╗  \\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m██║   ██║██║   ██║██║   ██║██║   ██║██║     ██╔══╝  \\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m╚██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝███████╗███████ \\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝\\033[1m"' ~/.bashrc
sudo sed -i '$a echo -e "\\033[36m                                                    \\033[1m"' ~/.bashrc

sudo sed -i '$a PS1="\\[\\e[1;36m\\]\\u\\[\\e[m\\]\\[\\e[1;33m\\]@\\[\\e[m\\]\\[\\e[1;31m\\]\\h\\[\\e[m\\]:\\w\\$"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m                                                    \\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m ██████╗  ██████╗  ██████╗  ██████╗ ██╗     ███████╗\\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m██╔════╝ ██╔═══██╗██╔═══██╗██╔════╝ ██║     ██╔════╝\\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m██║  ███╗██║   ██║██║   ██║██║  ███╗██║     █████╗  \\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m██║   ██║██║   ██║██║   ██║██║   ██║██║     ██╔══╝  \\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m╚██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝███████╗███████ \\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝\\033[1m"' /root/.bashrc
sudo sed -i '$a echo -e "\\033[36m                                                    \\033[1m"' /root/.bashrc

#=======================================================================================
# Tmux
#=======================================================================================

if [ ! -d "~/.tmux" ];then
	mkdir "~/.tmux"
elif [ ! -f "~/.tmux/.tmux.conf" ];
then
	touch "~/.tmux/.tmux.conf"
elif [ ! -f "~/.tmux/.tmux.conf.local" ];
then
	touch "~/.tmux/.tmux.conf.local"
fi

cat ~/code/SettingsFile/tmux.conf > ~/.tmux/.tmux.conf
cat ~/code/SettingsFile/tmux.conf.local > ~/.tmux/.tmux.conf.local

ln -s -f ~/.tmux/.tmux.conf

#=======================================================================================
# Vimrc and Zshrc
#=======================================================================================

#-f参数判断$zshrc是否存在 
if [ ! -f "~/.zshrc" ];
then
	touch "~/.zshrc"
#-f参数判断$vimrc是否存在 
elif [ ! -f "~/.vimrc" ];
then
	touch "~/.vimrc"
fi

cat ~/code/SettingsFile/zshrc > ~/.zshrc
cat ~/code/SettingsFile/vimrc > ~/.vimrc

#设置默认shell为zsh
chsh -s $(which zsh)

#检查是否设置成功
echo $SHELL

#查看我们的电脑上是否安装了zsh命令行
zsh --version
