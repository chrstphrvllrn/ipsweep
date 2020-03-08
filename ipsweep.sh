#!/bin/bash

if [ "$1" == "" ] 
then
echo "You for got and IP address!"
echo "Syntax: ./ipsweep.sh 192.168.0"
echo "Syntax: ./ipsweep.sh 192.168.0 > iplist.txt"

else
for ip in `seq 1 254` ; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & done
fi
