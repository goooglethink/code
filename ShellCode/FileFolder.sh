#!/bin/bash

if [ ! -d "~/Technology" ];then
	mkdir -p ~/Technology
fi

if [ ! -d "~/.stardict/dic" ];then
	mkdir -p ~/.stardict/dic
fi

if [ ! -d "~/.config/mpv" ];then
	mkdir -p ~/.config/mpv
fi

if [ ! -d "~/.gradle" ];then
	mkdir -p ~/.gradle
fi

if [ ! -d "~/.local/share/icons" ];then
	mkdir -p ~/.local/share/icons
fi

if [ ! -d "~/.local/share/themes" ];then
	mkdir -p ~/.local/share/themes
fi

if [ ! -d "~/.m2" ];then
	mkdir -p ~/.m2
fi

if [ ! -d "~/.vim/bundle" ];then
	mkdir -p ~/.vim/bundle
fi

if [ ! -d "~/.config/uGet/category" ];then
	mkdir -p ~/.config/uGet/category
fi

if [ ! -d "~/.config/uGet" ];then
	mkdir -p ~/.config/uGet
fi

if [ ! -d "~/.config/terminator" ];then
	mkdir -p ~/.config/terminator
fi

if [ ! -f "~/.ideavimrc" ];then
	touch ~/.ideavimrc
fi

if [ ! -f "~/.config/terminator/config" ];then
	touch ~/.config/terminator/config
fi

if [ ! -f "~/.config/uGet/category/0000.json" ];then
	touch ~/.config/uGet/category/0000.json
fi

if [ ! -f "~/.config/uGet/Setting.json" ];then
	touch ~/.config/uGet/Setting.json
fi

for f in stardict*.tar.bz2; do tar -jxvf $f -C ~/.stardict/dic; done && rm -rf stardict*.tar.bz2

tar -zxvf apache-maven*.tar.gz && rm -rf apache-maven*.tar.gz && mv apache-maven* ~/.m2/

tar -zxvf la-capitaine*.tar.gz && rm -rf la-capitaine*.tar.gz && mv la-capitaine* ~/.local/share/icons/

tar -xvf tor-browser*.tar.xz && rm -rf tor-browser*.tar.xz

unzip gradle*.zip && rm -rf gradle*.zip && mv gradle* ~/.gradle/

unzip OSX-Arc*.zip && rm -rf OSX-Arc*.zip && mv OSX-Arc* ~/.local/share/themes/

yes | cp ~/code/SettingsFile/autoload.lua ~/.config/mpv/autoload.lua

yes | cp ~/code/SettingsFile/mpv.conf ~/.config/mpv/mpv.conf

yes | cp ~/code/SettingsFile/init.gradle ~/.gradle/init.gradle

yes | cp ~/code/SettingsFile/docker-compose.yml ~/

cat ~/code/SettingsFile/ideavimrc > ~/.ideavimrc

cat ~/code/SettingsFile/terminatorConfig > ~/.config/terminator/config

cat ~/code/SettingsFile/uGetCategory.json > ~/.config/uGet/category/0000.json

cat ~/code/SettingsFile/uGetSetting.json > ~/.config/uGet/Setting.json
