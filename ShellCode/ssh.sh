#!/bin/bash
##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified: 2017-10-12 07:41
#Filename: ssh.sh
#Description:
##############################################

#!/bin/bash
expect -c "  
spawn ssh -l root 150.95.138.184
expect "password:"  
send \"QQqq0.123456789\r\"  
interact 
" 
#scp /home/google/docker-compose.yml root@150.95.138.184:/root/
#scp -r root@150.95.138.184:/root/ss.tar /home/google/ss.tar 
#sudo ssh root@150.95.138.184

