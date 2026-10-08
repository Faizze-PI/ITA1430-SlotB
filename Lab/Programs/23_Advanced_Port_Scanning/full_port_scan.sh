#!/bin/bash
# ==============================================================================
# Experiment 23: Port Scanning Tools (Extended / Full Range)
# Commands: nmap -sV, nmap -A, nmap -p 1-65535
# ==============================================================================

TARGET="${1:-127.0.0.1}"

echo "=========================================================="
echo "  Experiment 23: Advanced Port Scanning (Full Range)"
echo "  Target: $TARGET"
echo "=========================================================="

if ! command -v nmap &> /dev/null; then
    echo "Warning: 'nmap' is not installed."
    echo "To install: sudo apt update && sudo apt install -y nmap"
    exit 0
fi

echo -e "\n[1] Full Port Range Scan (-p 1-65535 or -p-):"
echo "Scans all 65,535 possible TCP ports to discover non-standard listening services."
echo "Command: nmap -p 1-1024 -T4 $TARGET (Scanning well-known ports for demo)"
echo "--------------------------------------------------------"
nmap -p 1-1024 -T4 "$TARGET"

echo -e "\n[2] Comprehensive Service & Script Enumeration (-A -sV):"
echo "Command: nmap -sV -A -T4 -F $TARGET"
echo "--------------------------------------------------------"
nmap -sV -A -T4 -F "$TARGET"

echo -e "\nExperiment 23 executed successfully."
