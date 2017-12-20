#!/bin/bash

if [ ! -d "~/.stardict/dic" ];then
	mkdir -p ~/.stardict/dic
fi

if [ ! -d "~/.config/mpv" ];then
	mkdir -p ~/.config/mpv
fi

if [ ! -d "~/.gradle" ];then
	mkdir -p ~/.gradle
fi

if [ ! -d "~/.gradle" ];then
	mkdir -p ~/.local/share/icons
fi

if [ ! -d "~/.gradle" ];then
	mkdir -p ~/.local/share/themes
fi

if [ ! -f "~/.ideavimrc" ];then
	touch ~/.ideavimrc
fi

for f in stardict*.tar.bz2; do tar -jxvf $f -C ~/.stardict/dic; done

yes | cp ~/code/SettingsFile/autoload.lua ~/.config/mpv/autoload.lua

yes | cp ~/code/SettingsFile/mpv.conf ~/.config/mpv/mpv.conf

yes | cp ~/code/SettingsFile/init.gradle ~/.gradle/init.gradle

yes | cp ~/code/SettingsFile/docker-compose.yml ~/

cat ~/code/SettingsFile/ideavimrc > ~/.ideavimrc



