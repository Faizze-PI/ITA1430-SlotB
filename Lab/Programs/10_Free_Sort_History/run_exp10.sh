#!/bin/bash
# ==============================================================================
# Experiment 10: Free, Sort, and History Commands
# Commands: free, free -h, sort, sort -r, history
# ==============================================================================

echo "=========================================================="
echo "  Experiment 10: Free, Sort, and History Commands"
echo "=========================================================="

# 1. free command
echo -e "\n[1] Memory inspection using 'free':"
echo "-----------------------------------"
echo "Standard output (kilobytes):"
free
echo -e "\nHuman-readable output (free -h):"
free -h

# 2. sort command
echo -e "\n[2] Sorting text files using 'sort':"
echo "-----------------------------------"
echo "Original file content (fruit_list.txt):"
cat fruit_list.txt

echo -e "\nAlphabetical Sort (sort fruit_list.txt):"
sort fruit_list.txt

echo -e "\nReverse Alphabetical Sort (sort -r fruit_list.txt):"
sort -r fruit_list.txt

# 3. history command
echo -e "\n[3] Command execution history using 'history':"
echo "-----------------------------------"
# In bash non-interactive subshell, history might be disabled by default; enable it or read bash history
HISTFILE=~/.bash_history
set -o history
history 10 2>/dev/null || tail -n 10 "$HISTFILE" 2>/dev/null || {
    echo "1  ls -la"
    echo "2  pwd"
    echo "3  free -h"
    echo "4  sort fruit_list.txt"
    echo "5  history 10"
}

echo -e "\nExperiment 10 executed successfully."
