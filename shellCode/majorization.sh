#打开桌面3D加速，也就是完整的gnome-shell，拒绝"fallback":
dbus-launch gsettings set org.gnome.desktop.session session-name 'gnome'
#执行：
gsettings get org.gnome.desktop.session session-name
#回显："gnome"，表示成功。
#恢复原有设置：
dbus-launch gsettings set org.gnome.desktop.session session-name 'gnome-fallback'

#预链接:减少软件启动是检测、链接的时间，从而加快软件启动速度
sudo sed -i '/PRELINKING=/d' /etc/default/prelink
sudo sed -i '/PRELINK_OPTS=/i\PRELINKING=yes' /etc/default/prelink
sudo /etc/cron.daily/prelink

#禁用休眠/挂起功能(笔记本电脑最好不要禁用休眠/挂起功能)
#RESUME=UUID=****这行注释掉（行首加#）
sudo sed -i 's/^/#/' /etc/initramfs-tools/conf.d/resume 
#^符号代表行首,$符号代表行尾

#修改grub2等待时间
sudo sed -i '/GRUB_TIMEOUT=/d' /etc/default/grub
sudo sed -i '/GRUB_DEFAULT=/a\GRUB_TIMEOUT=0' /etc/default/grub

#使用TMPFS(临时文件系统)减少磁盘读写
#一般情况下，Linux的/tmp文件夹接收着大量关于磁盘读写的操作。而通过优先使用物理内存，可以提高/tmp处理磁盘读写操作的速度。
echo "google" | sudo -S su -c "echo 'tmpfs /tmp tmpfs defaults,noexec,nosuid 0 0' >> /etc/fstab"
echo "google" | sudo -S sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/fstab
