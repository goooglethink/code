#/bin/bash
#install Chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo -S dpkg -i google-chrome-stable_current_amd64.deb 
#sudo apt-get -f install -y

#stardict dictionary
mkdir -p ~/.stardict/dic
for f in stardict*.tar.bz2; do sudo tar -jxvf $f -C ~/.stardict/dic; done

#bluetooth cpnfigure
sudo lsmod | grep blue
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
#sudo service bluetooth stop

#解决音量设置无法保存：
sudo alsactl store

#验证swap状态
sudo swapon -s
#关闭swap交换分区
sudo swapoff -a

#extract tor-browser package
#tar -xvf *.tar.xz
#tar -xf *.tar.xz

#extract zeronet and ideaIU package
#tar -xvf *.tar.gz

#install libreoffice 
#https://www.libreoffice.org/
#tar -xvzf *.tar.gz
#cd LibreOffice_5.3.4.2_Linux_x86-64_deb/DEBS/
#sudo dpkg -i *.deb

#install VMware-Workstation
#chmod +x VMware-Workstation-Full-12.5.5-5234757.x86_64.bundle
#sudo ./VMware-Workstation-Full-12.5.5-5234757.x86_64.bundle
#key
#GV7R8-03G44-4855Y-7PWEE-NL8DA
#5A02H-AU243-TZJ49-GTC7K-3C61N

#font
#sudo dpkg-reconfigure locales

#input sources
#fcitx-config-gtk3


