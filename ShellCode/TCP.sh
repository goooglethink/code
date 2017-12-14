#!/bin/bash

sudo -S bash -c 'cat ./code/LinuxSettings/sysctlconf >> /etc/sysctl.conf'
sudo su -c 'echo tcp_bbr >> /etc/modules-load.d/modules.conf'
sudo bash -c 'cat ./code/linuxSettings/limitsconf.txt >> /etc/security/limits.conf'
sudo sysctl -p
sudo sysctl net.ipv4.tcp_available_congestion_control
sudo sysctl net.ipv4.tcp_congestion_control
sudo lsmod | grep bbr

