#!/bin/bash

if [ ! -d "/home/google/.tmux" ];then
	mkdir "/home/google/.tmux"
elif [ ! -f "/home/google/.tmux/.tmux.conf" ];
then
	touch "/home/google/.tmux/.tmux.conf"
elif [ ! -f "/home/google/.tmux/.tmux.conf.local" ];
then
	touch "/home/google/.tmux/.tmux.conf.local"
fi


cat ~/code/linuxSettings/tmux.conf > ~/.tmux/.tmux.conf
cat ~/code/linuxSettings/tmux.conf.local > ~/.tmux/.tmux.conf.local

ln -s -f ~/.tmux/.tmux.conf
