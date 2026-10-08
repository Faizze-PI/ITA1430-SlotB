#!/bin/bash
# ==============================================================================
# Experiment 9: Nmap Timing and Performance Commands (Polite & Normal)
# Commands: nmap -T2, nmap -T3
# ==============================================================================

TARGET="${1:-127.0.0.1}"

echo "=========================================================="
echo "  Experiment 9: Nmap Timing and Performance (T2 & T3)"
echo "  Target: $TARGET"
echo "=========================================================="

if ! command -v nmap &> /dev/null; then
    echo "Warning: 'nmap' is not installed."
    echo "To install: sudo apt update && sudo apt install -y nmap"
    exit 0
fi

echo -e "\n[1] Executing Polite Scan (-T2):"
echo "Slows down packet transmission to evade intrusion detection systems (IDS)."
echo "Command: nmap -T2 -p 22,80,443 $TARGET"
echo "--------------------------------------------------------"
time nmap -T2 -p 22,80,443 "$TARGET"

echo -e "\n[2] Executing Normal Scan (-T3):"
echo "Default balanced timing speed template."
echo "Command: nmap -T3 -p 22,80,443 $TARGET"
echo "--------------------------------------------------------"
time nmap -T3 -p 22,80,443 "$TARGET"

echo -e "\nExperiment 9 executed successfully."
