#!/bin/bash
#sudo -S bash -c 'cat ./code/SettingsFile/sysctlconf >> /etc/sysctl.conf'
#sudo su -c 'echo tcp_bbr >> /etc/modules-load.d/modules.conf'

sudo chmod 777 /etc/sysctl.conf
sudo cat ~/code/SettingsFile/sysctlconf > /etc/sysctl.conf

sudo sed -i '$aecho tcp_bbr' /etc/modules-load.d/modules.conf

sudo sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/modules-load.d/modules.conf

sudo sed -i '$a* soft nproc 81920 \
* hard nproc 81920 \
* soft nofile 51200 \
* hard nofile 1024000 \ ' /etc/security/limits.conf

sudo sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/security/limits.conf

sudo sysctl -p

sudo sysctl net.ipv4.tcp_available_congestion_control

sudo sysctl net.ipv4.tcp_congestion_control

sudo lsmod | grep bbr

