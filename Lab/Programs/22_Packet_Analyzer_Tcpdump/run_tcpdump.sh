#!/bin/bash
# ==============================================================================
# Experiment 22: Packet Analyzer Tool (tcpdump)
# Command: tcpdump -i <interface>
# ==============================================================================

echo "=========================================================="
echo "  Experiment 22: Packet Analysis Using Tcpdump"
echo "=========================================================="

if ! command -v tcpdump &> /dev/null; then
    echo "Notice: 'tcpdump' is not installed in the current environment."
    echo "To install: sudo apt update && sudo apt install -y tcpdump"
    echo -e "\nSample Command Reference:"
    echo "  tcpdump -D                 # List available network interfaces"
    echo "  sudo tcpdump -i any -c 10  # Capture 10 packets on any interface"
    echo "  sudo tcpdump -i eth0 port 80 -n -X # Capture HTTP traffic with hex dump"
    exit 0
fi

echo -e "\n[1] Listing available network interfaces (tcpdump -D):"
echo "--------------------------------------------------------"
tcpdump -D || true

echo -e "\n[2] Capturing first 5 packets on loopback interface (lo):"
echo "--------------------------------------------------------"
if [ "$EUID" -ne 0 ]; then
    echo "Notice: tcpdump requires root privileges to capture raw packets."
    echo "Executing with sudo if configured, or demonstrating syntax:"
    sudo tcpdump -i lo -c 5 -n 2>/dev/null || echo "Run 'sudo tcpdump -i any -c 5' with administrative privileges."
else
    tcpdump -i lo -c 5 -n
fi

echo -e "\nExperiment 22 executed successfully."
