#!/bin/bash
if [ ! -d "~/.tmux" ];then
	mkdir "~/.tmux"
elif [ ! -f "~/.tmux/.tmux.conf" ];
then
	touch "~/.tmux/.tmux.conf"
elif [ ! -f "~/.tmux/.tmux.conf.local" ];
then
	touch "~/.tmux/.tmux.conf.local"
fi

cat ~/code/LinuxSettings/tmux.conf > ~/.tmux/.tmux.conf
cat ~/code/LinuxSettings/tmux.conf.local > ~/.tmux/.tmux.conf.local

ln -s -f ~/.tmux/.tmux.conf
