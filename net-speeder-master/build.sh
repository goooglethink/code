#!/bin/bash

gcc -O2 -o code/net-speeder-master/net_speeder code/net-speeder-master/net_speeder.c -lpcap -lnet $1
