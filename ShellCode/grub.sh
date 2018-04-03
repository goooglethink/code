#Hide Grub Menu in Boot of Linux Machine
sudo sed -i '/GRUB_TIMEOUT=/d' /etc/default/grub
sudo sed -i '/GRUB_DEFAULT=/a\GRUB_TIMEOUT=0' /etc/default/grub
sudo sed -i '/GRUB_TIMEOUT=/a\GRUB_DISABLE_OS_PROBER=true'  /etc/default/grub
sudo sed -i '/GRUB_CMDLINE_LINUX=/a\GRUB_BACKGROUND=""'  /etc/default/grub
sudo sed -r -i ':1;N;s/^(.+)((\n.*)*)\n\1$/\1\2/M;$!b1' /etc/default/grub
sudo update-grub


