#!/bin/bash
sudo -S su -c 'echo 127.0.0.1	google > /etc/hosts'
sudo bash -c 'cat ./code/Network/hostFile/hosts >> /etc/hosts'

