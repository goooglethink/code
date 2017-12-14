#!/bin/bash
##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified: 2017-10-12 07:45
#Filename: suroot.sh
#Description:
##############################################
#!/bin/bash
expect -c "  
spawn su -  
expect \":\"  
send \"google\r\"  
interact  
" 

