#!/bin/bash


git config --global user.name "googlethink"  
git config --global user.email "goooglethink@gmail.com"  

if [ ! -f "~/.git-credentials" ];then
	touch "~/.git-credentials"
fi
git config --global credential.helper store
echo "https://goooglethink:0.123456789qq@github.com" > ~/.git-credentials

