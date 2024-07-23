#!/bin/bash

# Check if an IP address is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS>"
  exit 1
fi

# Assign the provided IP address to a variable
IP=$1

# Run the initial Nmap scan to find open ports
ports=$(nmap -p- --min-rate=1000 -T4 $IP | grep '^[0-9]' | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)

# Check if ports are found
if [ -z "$ports" ]; then
  echo "No open ports found on $IP"
  exit 1
fi

# Run the detailed Nmap scan with the found ports
sudo nmap -p$ports -sC -sV -A $IP -oA nmap

# Print the location of the output file
echo "Nmap scan results saved to nmap"

