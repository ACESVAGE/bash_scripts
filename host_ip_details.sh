#!/bin/bash
#A simple script to display the host details and IP Address details


echo "Here are the host details and IP details"

HOSTNAME=$(hostname)
USER=$(whoami)
IP=$(hostame -I)
UPTIME=$(uptime -p)
MAC=$(ip link show eth0 | awk '$1 == "link/ether" {print $2}')
echo "Host Name: $HOSTNAME"
echo "Current Logged in User: $USER"
echo "User up time: $UPTIME"
echo "Ip Address: $IP"
echo "MAC Address: $MAC"


