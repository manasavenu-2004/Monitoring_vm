#!/bin/bash
####################################
#Author: Manasa
#Date: 16-10-2026
#Version: v1
#Task: This is the file used to display Services, CPU usage, Disk usage, Memory Usage.
###################################




#############################################################################
#List of Services
echo "-----------------------------SERVICES---------------------------------"
sudo systemctl list-units --type=service --state=running
#CPU usage
echo "-----------------------------CPU USAGE--------------------------------"
top -b -n 1
#Memory usage
echo "-----------------------------MEMORY USAGE-----------------------------"
free -h
#Disk usage
echo "-----------------------------DISK USAGE-------------------------------"
df -h
#############################################################################

