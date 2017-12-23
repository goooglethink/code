
#!/bin/bash
sudo -S su -c "echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list"
sudo su -c "echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list"
echo "google" | sudo -S sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/apt/sources.list
echo "google" | sudo -S apt-get update
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
#sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
# modprobe wl
#sudo modprobe -r btusb
##sudo modprobe btusb
#sudo dmesg | grep -i blu
#lsusb
#sudo shutdown -r now
