#!/bin/bash
# ==============================================================================
# Experiment 19: Wireshark Sniffer for Network Traffic Analysis
# ==============================================================================

echo "=========================================================="
echo "  Experiment 19: Wireshark Network Traffic Analysis"
echo "=========================================================="

echo "Wireshark is an interactive graphical protocol analyzer."
echo "Checking Wireshark availability in current environment..."

if command -v wireshark &> /dev/null; then
    echo "Wireshark is installed."
    echo "To launch in graphical desktop: wireshark &"
elif command -v tshark &> /dev/null; then
    echo "tshark (Wireshark CLI engine) is installed."
    echo "Capturing 5 packets on default interface:"
    tshark -c 5 2>/dev/null || echo "Run with sudo for packet capture privileges."
else
    echo "Wireshark GUI not installed. (Install: sudo apt install wireshark)"
fi

echo -e "\nDetailed procedure and filter cheat-sheet are available in: wireshark_capture_guide.md"
echo -e "\nExperiment 19 execution overview completed."
