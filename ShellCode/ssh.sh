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
spawn ssh -l root 163.44.119.41
expect "password:"  
send \"QQqq0.123456789\r\"  
interact 
" 

#sudo ssh root@150.95.181.233
