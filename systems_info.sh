#!/bin/bash
#A simple systems info script

HOSTNAME = $(hostname)
USER = $(whoami)
UPTIME = $(uptime -p)

echo "Host: $HOSTNAME"
echo "User: $USER"
echo "Uptime: $UPTIME"


