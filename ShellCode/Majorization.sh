#打开桌面3D加速，也就是完整的gnome-shell，拒绝"fallback":
dbus-launch gsettings set org.gnome.desktop.session session-name 'gnome'
#执行：
gsettings get org.gnome.desktop.session session-name
#回显："gnome"，表示成功。
#恢复原有设置：
#dbus-launch gsettings set org.gnome.desktop.session session-name 'gnome-fallback'

#禁用休眠/挂起功能(笔记本电脑最好不要禁用休眠/挂起功能)
#RESUME=UUID=****这行注释掉（行首加#）
#echo "google" | sudo -S sudo sed -i 's/^/#/' /etc/initramfs-tools/conf.d/resume
#^符号代表行首,$符号代表行尾

#修改grub2等待时间
sudo sed -i '/GRUB_TIMEOUT=/d' /etc/default/grub
sudo sed -i '/GRUB_DEFAULT=/a\GRUB_TIMEOUT=0' /etc/default/grub
sudo sed -i '/GRUB_TIMEOUT=/a\GRUB_DISABLE_OS_PROBER=true'  /etc/default/grub
sudo sed -i '/GRUB_CMDLINE_LINUX=/a\GRUB_BACKGROUND=""'  /etc/default/grub
sudo sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/default/grub
sudo update-grub

#check swap status
sudo swapon -s
#off swap partition
sudo swapoff -a
sudo sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/fstab
sudo sed -i '/\<swap/s/^/#/' /etc/fstab
#\< 匹配单词的开始
#\> 匹配单词的结束

#bluetooth cpnfigure
sudo lsmod | grep blue
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
#sudo service bluetooth stop

#解决音量设置无法保存：
sudo alsactl store

