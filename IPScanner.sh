#!/bin/bash
#
##############################
#   AUTOMATED PORT SCANNER   #
#       BY WEBFOX            #
##############################
#
echo "Enter the Starting IP Address :"
read FirstIP

echo "Enter the Last IP Address :"
read LastIP

echo "Enter the Port number you want to scan for :"
read Port

nmap -sT $FirstIP- $LastIP -p $Port -oG web
cat web |grep open >web1
cat web1 |cut -f2 -d":" | cut -f1 -d"(" > web2
cat web2