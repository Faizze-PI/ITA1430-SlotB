#!/bin/bash
# ==============================================================================
# Experiment 12: Port Scanning Tools
# Commands: nmap (TCP Connect), nmap -sS (SYN Stealth Scan)
# ==============================================================================

TARGET="${1:-127.0.0.1}"

echo "=========================================================="
echo "  Experiment 12: Port Scanning Tools (Connect vs SYN Scan)"
echo "  Target: $TARGET"
echo "=========================================================="

if ! command -v nmap &> /dev/null; then
    echo "Warning: 'nmap' is not installed."
    echo "To install: sudo apt update && sudo apt install -y nmap"
    exit 0
fi

echo -e "\n[1] Executing Standard TCP Connect Scan (Default unprivileged scan):"
echo "Completes full 3-way TCP handshake (SYN -> SYN/ACK -> ACK)."
echo "Command: nmap -sT -F $TARGET"
echo "--------------------------------------------------------"
nmap -sT -F "$TARGET"

echo -e "\n[2] Executing SYN Stealth Scan (-sS):"
echo "Sends SYN packet, listens for SYN/ACK, then resets connection with RST."
echo "Often referred to as 'half-open' scanning because connection is never completed."
echo "Command: sudo nmap -sS -F $TARGET"
echo "--------------------------------------------------------"
if [ "$EUID" -ne 0 ]; then
    echo "Executing with sudo or unprivileged fallback:"
    sudo nmap -sS -F "$TARGET" 2>/dev/null || nmap -F "$TARGET"
else
    nmap -sS -F "$TARGET"
fi

echo -e "\nExperiment 12 executed successfully."
