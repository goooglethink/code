#!/bin/bash
#Settings proxy : sudo apt-get -o Acquire::http::proxy="http://proxyAddress:proxyPort/" 
#-----------------------------------------------------------
# basic software packages
sudo -S apt-get install aptitude -y
sudo aptitude install guake -y
sudo aptitude install terminator -y
sudo aptitude install zsh
sudo aptitude install aptitude -y
#-----------------------------------------------------------
#download
sudo aptitude install axel -y
sudo aptitude install aria2 -y
sudo aptitude install uget -y
sudo aptitude install youtube-dl -y
#-----------------------------------------------------------
#bluetooth program
sudo aptitude install bluetooth
sudo aptitude install pavucontrol
sudo aptitude install bluedevil -y
sudo aptitude install pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware
sudo aptitude install blueman -y
#---------------------------------------------------------------
sudo aptitude install build-essential
sudo aptitude install build-essential dkms
sudo aptitude install build-essential cmake -y
sudo aptitude install build-essential ncurses-dev yodl -y
sudo aptitude install build-essential linux-headers-$(uname -r) -y
#---------------------------------------------------------------
#Network-Manager
sudo aptitude install network-manager-openvpn-gnome -y
sudo aptitude install network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome -y
sudo aptitude install nscd #dns
sudo aptitude install pdns-recursor #dns
sudo aptitude install bridge-utils #docker
#---------------------------------------------------------------
#net-speeder environment
sudo aptitude install libnet1
sudo aptitude install libpcap0.8
sudo aptitude install libnet1-dev
sudo aptitude install libpcap0.8-dev
#---------------------------------------------------------------
#Video and Music
sudo aptitude install ffmpeg
#---------------------------------------------------------------
#python environment
sudo aptitude install ipython3 -y
sudo aptitude install python3-pip -y
sudo aptitude install python-dev python3-dev
#---------------------------------------------------------------
#input
sudo aptitude install ibus -y
sudo aptitude install ibus-pinyin -y
sudo aptitude install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4 -y
sudo aptitude install xfonts-wqy -y
sudo aptitude install ttf-freefont xfonts-intl-chinese xfonts-wqy
#---------------------------------------------------------------
#system environment
sudo aptitude install git -y
sudo aptitude install figlet -y	#.bashrc file
sudo aptitude install libappindicator1 libindicator7 -y	#Chrome
sudo aptitude install vim -y
sudo aptitude install libgnome2-0 -y
sudo aptitude install libasound2 alsa-utils alsa-oss -y
sudo aptitude install tree
sudo aptitude install cmatrix -y
sudo aptitude install cmake -y
sudo aptitude install ctags
sudo aptitude install stardict -y
sudo aptitude install sdcv
sudo aptitude install mtools #UNetbootin
sudo aptitude install smartmontools	#disk
sudo aptitude install zeal
sudo aptitude install privoxy -y
sudo aptitude install kali-linux-all -y
#---------------------------------------------------------------
sudo aptitude install synaptic -y
sudo aptitude install htop
sudo aptitude install bleachbit -y
sudo aptitude install gdebi -y
sudo aptitude install virtualbox -y
sudo aptitude install shutter -y
sudo aptitude install golang -y
sudo aptitude install chromium -y
#---------------------------------------------------------------
#install docker environment
sudo aptitude install apt-transport-https
sudo aptitude install ca-certificates
sudo aptitude install gnupg2
sudo aptitude install curl
sudo aptitude install software-properties-common
sudo aptitude install lsb-release
#---------------------------------------------------------------
#database
sudo aptitude install mysql-workbench -y
sudo aptitude install mongodb -y
#---------------------------------------------------------------
#Java Project
sudo aptitude install maven -y
sudo aptitude install gradle -y
#---------------------------------------------------------------
#sudo apt-get install snort -y
#sudo apt-get install mitmf -y
#sudo apt-get install fcitx fcitx-table-wbpy fcitx-config-gtk fcitx-sunpinyin -y #input sources
#sudo apt-get install fcitx-table-all -y
#sudo apt-get install llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev
#sudo apt-get install silversearcher-ag
#sudo apt-get install netcat -y
#sudo apt-get install openvas -y
#sudo apt-get install rkhunter -y
#sudo apt-get install recordmydesktop -y
#sudo apt-get install wicd wicd-gtk -y	#wifi
#sudo apt-get install realtek-rtl88xxau-dkms
#sudo apt-get install vlc -y
#sudo apt-get install winff -y
#sudo apt-get install gufw -y
#sudo apt-get install snapd -y
#sudo systemctl enable snapd.service
#sudo systemctl status snapd.service
#sudo systemctl restart snapd.service
#sudo apt-get install k3b -y
#sudo apt-get install psensor -y
#sudo apt-get install gscan2pdf -y
#sudo apt-get install evince -y #pdf
#sudo apt-get install conky -y
#sudo apt-get install conky-all -y
#sudo apt-get install conky-manager -y
