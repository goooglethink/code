#!/bin/bash
read -p "If your want to restart system now? (y or n) : " y
if  [ "$y"x = "y"x  ];then
	sudo shutdown -r now
else
	echo "keep processing"
fi
