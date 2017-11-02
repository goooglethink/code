#!/bin/bash

gcc -O2 -o code/net-speeder/net_speeder code/net-speeder/net_speeder.c -lpcap -lnet $1
