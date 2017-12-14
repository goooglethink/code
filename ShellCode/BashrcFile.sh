#/bin/bash/
#gedit ./.bashrc
#sudo gedit /root/.bashrc
# ./ 是指当前目录
# ~/ 是指用户目录
sed -i '/1;36m/d;\/echo -e/d' /home/$USER/.bashrc
sudo sed -i '/1;36m/d;\/echo -e/d' /root/.bashrc
sudo -S bash -c 'cat ./code/SettingsFile/bashrc >> ./.bashrc'
sudo bash -c 'cat ./code/SettingsFile/bashrc >> ~/.bashrc'

