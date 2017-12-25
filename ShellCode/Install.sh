#!/bin/bash
#Settings proxy : sudo apt-get -o Acquire::http::proxy="http://proxyAddress:proxyPort/" 
#sudo apt-get -o Acquire::http::proxy="http://127.0.0.1:/" 
#-----------------------------------------------------------
# basic software packages
sudo -S apt-get install aptitude -y
sudo apt-get install guake -y
sudo apt-get install terminator -y
sudo apt-get install zsh
sudo apt-get install aptitude -y
#-----------------------------------------------------------
#download
sudo apt-get install axel -y
sudo apt-get install aria2 -y
sudo apt-get install uget -y
sudo apt-get install youtube-dl -y
#-----------------------------------------------------------
#bluetooth program
sudo apt-get install bluetooth
sudo apt-get install pavucontrol
sudo apt-get install bluedevil -y
sudo apt-get install pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware
sudo apt-get install blueman -y
#---------------------------------------------------------------
sudo apt-get install build-essential
sudo apt-get install build-essential dkms
sudo apt-get install build-essential cmake -y
sudo apt-get install build-essential ncurses-dev yodl -y
sudo apt-get install build-essential linux-headers-$(uname -r) -y
#---------------------------------------------------------------
#Network-Manager
sudo apt-get install network-manager-openvpn-gnome -y
sudo apt-get install network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome -y
sudo apt-get install nscd #dns
sudo apt-get install pdns-recursor -y #dns
sudo apt-get install bridge-utils #docker
#---------------------------------------------------------------
#net-speeder environment
sudo apt-get install libnet1
sudo apt-get install libpcap0.8
sudo apt-get install libnet1-dev
sudo apt-get install libpcap0.8-dev
#---------------------------------------------------------------
#Video and Music
sudo apt-get install ffmpeg
#---------------------------------------------------------------
#python environment
sudo apt-get install ipython3 -y
sudo apt-get install python3-pip -y
sudo apt-get install python-dev python3-dev
#---------------------------------------------------------------
#input
sudo apt-get install ibus -y
sudo apt-get install ibus-pinyin -y
sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4 -y
sudo apt-get install xfonts-wqy -y
sudo apt-get install ttf-freefont xfonts-intl-chinese xfonts-wqy
#---------------------------------------------------------------
#system environment
sudo apt-get install git -y
sudo apt-get install figlet -y	#.bashrc file
sudo apt-get install libappindicator1 libindicator7 -y	#Chrome
sudo apt-get install vim -y
sudo apt-get install libgnome2-0 -y
sudo apt-get install libasound2 alsa-utils alsa-oss -y
sudo apt-get install tree
sudo apt-get install cmatrix -y
sudo apt-get install cmake -y
sudo apt-get install ctags
sudo apt-get install stardict -y
sudo apt-get install sdcv
sudo apt-get install mtools #UNetbootin
sudo apt-get install smartmontools	#disk
sudo apt-get install zeal
sudo apt-get install privoxy -y
sudo apt-get install mesa-utils #nvidia x server settings
sudo apt-get install flatpak -y
#---------------------------------------------------------------
sudo apt-get install synaptic -y
sudo apt-get install htop
sudo apt-get install bleachbit -y
sudo apt-get install gdebi -y
sudo apt-get install virtualbox -y && sudo usermod -aG vboxusers $USER
sudo apt-get install shutter -y
sudo apt-get install golang -y
sudo apt-get install chromium -y
#---------------------------------------------------------------
#install docker environment
sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates
sudo apt-get install gnupg2
sudo apt-get install curl
sudo apt-get install software-properties-common
sudo apt-get install lsb-release
#---------------------------------------------------------------
#database
sudo apt-get install mysql-workbench -y
sudo apt-get install mongodb -y
#---------------------------------------------------------------
#Java Project
sudo apt-get install maven -y
sudo apt-get install gradle -y
#---------------------------------------------------------------
#sudo apt-get install kali-linux-all -y
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
