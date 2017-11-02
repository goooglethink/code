#!/bin/bash
##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified: 2017-10-20 20:37
#Filename: dockerRemove.sh
#Description:
##############################################
#!/bin/bash

read -p "Please input docker project: " docker
docker stop $docker && docker rm $docker
