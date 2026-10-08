#!/bin/bash
# ==============================================================================
# Experiment 13: Host Discovery (Ping Sweep)
# Command: nmap -sn <subnet>
# ==============================================================================

# Default to local subnet or local loopback
SUBNET="${1:-127.0.0.1/24}"

echo "=========================================================="
echo "  Experiment 13: Host Discovery (Ping Sweep)"
echo "  Target Subnet: $SUBNET"
echo "=========================================================="

if ! command -v nmap &> /dev/null; then
    echo "Warning: 'nmap' is not installed."
    echo "To install: sudo apt update && sudo apt install -y nmap"
    exit 0
fi

echo -e "\n[1] Executing Ping Sweep (-sn):"
echo "Performs host discovery only without port scanning."
echo "Command: nmap -sn $SUBNET"
echo "--------------------------------------------------------"
nmap -sn "$SUBNET"

echo -e "\nExperiment 13 executed successfully."
