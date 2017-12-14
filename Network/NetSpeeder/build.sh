#!/bin/bash

gcc -O2 -o ./code/Network/NetSpeeder/net_speeder ./code/Network/NetSpeeder/net_speeder.c -lpcap -lnet $1
