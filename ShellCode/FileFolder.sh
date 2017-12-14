#!/bin/bash

if [ ! -d "~/.stardict/dic" ];then
	mkdir -p ~/.stardict/dic
elif [ ! -d "~/.config/mpv" ];then
	mkdir -p ~/.config/mpv
elif [ ! -d "~/.gradle" ];then
	mkdir -p ~/.gradle
elif [ ! -f "~/.ideavimrc" ];then
	touch ~/.ideavimrc
fi

for f in stardict*.tar.bz2; do tar -jxvf $f -C ~/.stardict/dic; done

cp ~/code/SettingsFile/autoload.lua ~/.config/mpv/autoload.lua
cp ~/code/SettingsFile/mpv.conf ~/.config/mpv/mpv.conf
cp ~/code/SettingsFile/init.gradle ~/.gradle/init.gradle

cat ~/code/SettingsFile/ideavimrc > ~/.ideavimrc



