#!/bin/bash
# ==============================================================================
# Experiment 4: Directory and File Display Commands
# Commands: ls, cat, mkdir
# ==============================================================================

echo "=========================================================="
echo "  Experiment 4: Directory and File Display Commands"
echo "=========================================================="

# 1. mkdir command
echo -e "\n[1] Creating directory using 'mkdir':"
echo "-----------------------------------"
DIR_NAME="EthicalHacking"
mkdir -p "$DIR_NAME"
echo "Directory '$DIR_NAME' created successfully."

# 2. ls command
echo -e "\n[2] Listing directory contents using 'ls':"
echo "-----------------------------------"
echo "Basic ls:"
ls
echo -e "\nDetailed ls -l (permissions, ownership, size):"
ls -l
echo -e "\nListing all files including hidden (ls -la):"
ls -la

# 3. cat command
echo -e "\n[3] Displaying file contents using 'cat':"
echo "-----------------------------------"
cat file.txt

# Cleanup demonstration folder
rmdir "$DIR_NAME"
echo -e "\nCleaned up temporary demonstration directory '$DIR_NAME'."

echo -e "\nExperiment 4 executed successfully."
