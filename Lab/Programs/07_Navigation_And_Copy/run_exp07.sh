#!/bin/bash
# ==============================================================================
# Experiment 7: Navigation and Copy Commands
# Commands: cd, cp, ls
# ==============================================================================

echo "=========================================================="
echo "  Experiment 7: Navigation and Copy Commands"
echo "=========================================================="

echo -e "\n[1] Current directory:"
pwd

# Create sub-directory for navigation testing
mkdir -p Documents

echo -e "\n[2] Copying file1.txt to backup.txt using 'cp':"
echo "-----------------------------------"
cp -v file1.txt backup.txt

echo -e "\n[3] Copying file1.txt into Documents directory:"
echo "-----------------------------------"
cp -v file1.txt Documents/

echo -e "\n[4] Navigating into Documents directory using 'cd':"
echo "-----------------------------------"
cd Documents
echo "Now in directory: $(pwd)"
echo "Listing contents of Documents directory:"
ls -la

# Return to parent directory
cd ..
echo -e "\nNavigated back to: $(pwd)"

# Verify copied files
echo -e "\n[5] Verifying backup files in root of Exp 7:"
ls -l file1.txt backup.txt

# Cleanup demonstration folder
rm -rf Documents backup.txt
echo -e "\nCleaned up temporary demonstration copies."

echo -e "\nExperiment 7 executed successfully."
