#!/bin/bash
# ==============================================================================
# Experiment 1: Basic File and User Management Commands
# Commands: rm, users, tree
# ==============================================================================

echo "=========================================================="
echo "  Experiment 1: Basic File and User Management Commands"
echo "=========================================================="

# 1. users command - displays currently logged in users
echo -e "\n[1] Executing 'users' command:"
echo "-----------------------------------"
users

# 2. tree command - displays directory and file structure
echo -e "\n[2] Executing 'tree' command:"
echo "-----------------------------------"
if command -v tree &> /dev/null; then
    tree -L 2
else
    echo "'tree' command not installed. Displaying alternative using find/ls:"
    find . -maxdepth 2 -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
fi

# 3. rm command - creating and removing a sample file
echo -e "\n[3] Demonstrating 'rm' command:"
echo "-----------------------------------"
echo "Creating temporary file 'test.txt'..."
touch test.txt
ls -l test.txt
echo "Removing 'test.txt' using 'rm'..."
rm -v test.txt

echo -e "\nExperiment 1 executed successfully."
