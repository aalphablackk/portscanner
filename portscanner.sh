#!/bin/bash
echo ==============
echo Port Scanner
echo ==============
port=("80" "40" "443" "22" "25" "21")
echo "Enter your IP address to scan"
read ip
echo "All items: ${port[@]}"
for i in "${port[@]}"; do
	echo Checking port "$i" .........
	echo -----------------------------
	nmap -p "$i" "$ip"
done
