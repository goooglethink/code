#/bin/bash/
#gedit ./.bashrc
#sudo gedit /root/.bashrc
sed -i '/1;36m/d;\/echo -e/d' /home/google/.bashrc
sudo sed -i '/1;36m/d;\/echo -e/d' /root/.bashrc
sudo -S bash -c 'cat code/linuxSettings/bashrc.txt >> /home/google/.bashrc'
sudo bash -c 'cat code/linuxSettings/bashrc.txt >> /root/.bashrc'

