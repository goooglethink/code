#!/bin/bash
expect -c "  
spawn su -  
expect \":\"  
send \"google\r\"  
interact  
" 
