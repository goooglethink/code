#!/bin/bash
#---------------------------------------------------------------
#basic development environment
echo "google" | sudo -S su -c "aptitude install terminator zsh git vim mpv flatpak -y"
#---------------------------------------------------------------
#download tools applications
sudo su -c "aptitude install aria2 axel curl uget -y"
#---------------------------------------------------------------
#Virtual Machine
sudo su -c "aptitude install virtualbox -y" && sudo usermod -aG vboxusers $USER
#---------------------------------------------------------------
#Input Sources
sudo su -c "aptitude install ibus-pinyin -y"
#---------------------------------------------------------------
#Web Browser
sudo su -c "aptitude install chromium -y"
#---------------------------------------------------------------
#Auto set wallpaper
sudo su -c "aptitude install variety -y"
#---------------------------------------------------------------
#Terminal Dictionary
sudo su -c "aptitude install sdcv -y"
#---------------------------------------------------------------
#Install terminal fonts color
sudo su -c "aptitude install lolcat -y"
#---------------------------------------------------------------
#Install terminal screen saver color
sudo su -c "aptitude install cmatrix -y"
#---------------------------------------------------------------
#Install terminal folders display
sudo su -c "aptitude install tree -y"
#---------------------------------------------------------------
#UNetbootin dependence package
sudo su -c "aptitude install mtools -y"
#---------------------------------------------------------------
#Find orphaned packages tool
sudo su -c "aptitude install deborphan -y"
#---------------------------------------------------------------
#etcher-1.3.1-x86_64.AppImage dependence package
sudo su -c "aptitude install libgconf-2-4 -y"
#---------------------------------------------------------------
#sudo aptitude install wine winetricks
#sudo aptitude install build-essential dkms -y #virtualbox environment
#sudo aptitude install smartmontools -y #Smartmontools package dependences
#sudo aptitude install mesa-utils -y #Nvidia X Server package dependences
#sudo aptitude install apt-transport-https ca-certificates gnupg2 software-properties-common lsb-release -y #docker package dependences
#sudo aptitude install ipython3 python3-pip python-dev python3-dev -y #python development environment
#sudo aptitude install cmake libncurses5-dev yodl linux-headers-$(uname -r) -y #System environment
#sudo aptitude install libasound2 alsa-utils alsa-oss -y #sound package dependences
#sudo aptitude install golang -y
#sudo aptitude install ctags -y #vim plugin dependences
#sudo aptitude install nscd pdns-recursor -y  #DNS optimization
#sudo aptitude install libnet1 libpcap0.8 libnet1-dev libpcap0.8-dev -y #net-speeder package dependences
#sudo aptitude install stardict
#sudo aptitude install maven -y
#sudo aptitude install synaptic gdebi -y
#sudo aptitude install mysql-workbench -y
#sudo aptitude install ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4
#sudo aptitude install ttf-freefont xfonts-intl-chinese xfonts-wqy -y
#sudo aptitude install libappindicator1 libindicator7 -y #Chrome dependences
#sudo aptitude install network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome -y
#sudo aptitude install bridge-utils #docker network
#sudo aptitude install bluetooth pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware bluedevil blueman -y
#sudo aptitude install figlet -y	#.bashrc
#sudo aptitude install libgnome2-0 -y
#sudo aptitude install youtube-dl -y
#sudo aptitude install htop
#sudo aptitude install zeal
#sudo aptitude install shutter -y
#sudo aptitude install gradle -y
#sudo aptitude install mongodb -y
#sudo aptitude install ffmpeg
#sudo aptitude install guake -y
#sudo aptitude install privoxy -y
#sudo aptitude install bleachbit -y
#sudo aptitude install kali-linux-all -y
#sudo aptitude install snort -y
#sudo aptitude install mitmf -y
#sudo aptitude install fcitx fcitx-table-wbpy fcitx-config-gtk fcitx-sunpinyin -y #input sources
#sudo aptitude install fcitx-table-all -y
#sudo aptitude install llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev
#sudo aptitude install silversearcher-ag
#sudo aptitude install netcat -y
#sudo aptitude install openvas -y
#sudo aptitude install rkhunter -y
#sudo aptitude install recordmydesktop -y
#sudo aptitude install wicd wicd-gtk -y	#wifi
#sudo aptitude install realtek-rtl88xxau-dkms
#sudo aptitude install vlc -y
#sudo aptitude install winff -y
#sudo aptitude install gufw -y
#sudo aptitude install snapd -y
#sudo aptitude install k3b -y
#sudo aptitude install psensor -y
#sudo aptitude install gscan2pdf -y
#sudo aptitude install evince -y #pdf
#sudo aptitude install conky -y
#sudo aptitude install conky-all -y
#sudo aptitude install conky-manager -y
#sudo aptitude install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms #BCM94352HMB
