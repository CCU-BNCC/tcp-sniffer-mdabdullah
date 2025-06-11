#!/bin/bash

# sniff.sh
# 🛡️ Made by MD Abdullah | For Educational & Ethical Use Only

echo "🔍 TCPDUMP Sniffing Script Started"
echo "----------------------------------"

# Step 1: Interface input
echo -n "👉 Enter Network Interface (e.g. wlan0, eth0): "
read interface

# Step 2: Output file with timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")
outfile="sniffed_$timestamp.pcap"

# Step 3: Filter input
echo -n "📦 Enter tcpdump filter (e.g. port 80, tcp, udp, host 192.168.1.1): "
read filter

# Step 4: Start tcpdump
echo "📡 Starting sniff on: $interface"
echo "📂 Output File: $outfile"
echo "🛑 Press Ctrl+C to stop..."

sudo tcpdump -i "$interface" $filter -w "$outfile"

echo "✅ Sniffing complete! File saved as $outfile"
