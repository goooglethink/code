
#!/bin/bash
echo "google" | sudo -S apt-get update
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
# modprobe wl
sudo modprobe -r btusb
sudo modprobe btusb
sudo dmesg | grep -i blu
lsusb
#sudo shutdown -r now
