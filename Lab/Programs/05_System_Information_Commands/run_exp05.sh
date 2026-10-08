#!/bin/bash
# ==============================================================================
# Experiment 5: System Information Commands
# Commands: uptime, date, mv
# ==============================================================================

echo "=========================================================="
echo "  Experiment 5: System Information Commands"
echo "=========================================================="

# 1. uptime command
echo -e "\n[1] Executing 'uptime':"
echo "-----------------------------------"
uptime

# 2. date command
echo -e "\n[2] Executing 'date':"
echo "-----------------------------------"
date
echo "Formatted date (YYYY-MM-DD HH:MM:SS):"
date "+%Y-%m-%d %H:%M:%S"

# 3. mv command
echo -e "\n[3] Demonstrating 'mv' (Move / Rename):"
echo "-----------------------------------"
echo "Renaming file1.txt to file2.txt..."
mv -v file1.txt file2.txt
ls -l file2.txt

echo "Reverting file2.txt back to file1.txt..."
mv -v file2.txt file1.txt
ls -l file1.txt

echo -e "\nExperiment 5 executed successfully."
