#!/bin/bash
# ==============================================================================
# Experiment 11: Nmap Timing and Performance (Aggressive & Insane Speed Scans)
# Commands: nmap -T4, nmap -T5
# ==============================================================================

TARGET="${1:-127.0.0.1}"

echo "=========================================================="
echo "  Experiment 11: Nmap Timing and Performance (T4 & T5)"
echo "  Target: $TARGET"
echo "=========================================================="

if ! command -v nmap &> /dev/null; then
    echo "Warning: 'nmap' is not installed."
    echo "To install: sudo apt update && sudo apt install -y nmap"
    exit 0
fi

echo -e "\n[1] Executing Aggressive Speed Scan (-T4):"
echo "Assumes a reasonably fast and reliable network; reduces probe delays."
echo "Command: nmap -T4 -F $TARGET"
echo "--------------------------------------------------------"
time nmap -T4 -F "$TARGET"

echo -e "\n[2] Executing Insane Speed Scan (-T5):"
echo "Extremely aggressive; caps probe timeouts to 5ms and max rtt to 75ms."
echo "Note: May sacrifice port scan accuracy on congested or lossy networks."
echo "Command: nmap -T5 -F $TARGET"
echo "--------------------------------------------------------"
time nmap -T5 -F "$TARGET"

echo -e "\nExperiment 11 executed successfully."
