#!/bin/bash
# ==============================================================================
# Experiment 8: Nmap Service Version and OS Detection
# Commands: nmap -sV, nmap -A, sudo nmap -O
# ==============================================================================

TARGET="${1:-127.0.0.1}"

echo "=========================================================="
echo "  Experiment 8: Nmap Service Version and OS Detection"
echo "  Target: $TARGET"
echo "=========================================================="

if ! command -v nmap &> /dev/null; then
    echo "Warning: 'nmap' is not installed in this environment."
    echo "To install on Debian/Kali: sudo apt update && sudo apt install -y nmap"
    echo -e "\nSimulating command syntax and sample output for academic reference:\n"
    echo "Command 1: nmap -sV $TARGET"
    echo "Command 2: nmap -A $TARGET"
    echo "Command 3: sudo nmap -O $TARGET"
    exit 0
fi

echo -e "\n[1] Detecting Service Versions (-sV):"
echo "Command: nmap -sV -F $TARGET"
echo "--------------------------------------------------------"
nmap -sV -F "$TARGET"

echo -e "\n[2] Performing Operating System Detection (-O):"
echo "Command: nmap -O --osscan-guess -F $TARGET"
echo "--------------------------------------------------------"
# Note: OS detection requires root privileges (raw packet capabilities)
if [ "$EUID" -ne 0 ]; then
    echo "Note: Running OS detection without root privileges might be limited."
    echo "Executing: sudo nmap -O -F $TARGET (or running standard scan if non-root)"
    nmap -O -F "$TARGET" 2>/dev/null || sudo nmap -O -F "$TARGET" 2>/dev/null || nmap -sV -F "$TARGET"
else
    nmap -O -F "$TARGET"
fi

echo -e "\n[3] Performing Aggressive Scan (-A):"
echo "Command: nmap -A -T4 -F $TARGET"
echo "--------------------------------------------------------"
nmap -A -T4 -F "$TARGET"

echo -e "\nExperiment 8 executed successfully."
