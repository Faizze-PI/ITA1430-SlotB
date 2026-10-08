#!/bin/bash
# ==============================================================================
# Experiment 3: Tree, Head, and Tail Commands
# Commands: tree, head, tail
# ==============================================================================

echo "=========================================================="
echo "  Experiment 3: Tree, Head, and Tail Commands"
echo "=========================================================="

FILE="student.txt"

if [ ! -f "$FILE" ]; then
    echo "Error: $FILE does not exist. Ensure student.txt is present."
    exit 1
fi

echo -e "\n[1] Demonstrating 'head' command (Default first 10 lines):"
echo "--------------------------------------------------------"
head "$FILE"

echo -e "\n[2] Demonstrating 'head -n 3' command (First 3 lines):"
echo "--------------------------------------------------------"
head -n 3 "$FILE"

echo -e "\n[3] Demonstrating 'tail' command (Default last 10 lines):"
echo "--------------------------------------------------------"
tail "$FILE"

echo -e "\n[4] Demonstrating 'tail -n 3' command (Last 3 lines):"
echo "--------------------------------------------------------"
tail -n 3 "$FILE"

echo -e "\n[5] Demonstrating 'tree' command:"
echo "--------------------------------------------------------"
if command -v tree &> /dev/null; then
    tree .. -L 2
else
    echo "tree command not found, using alternative hierarchy view:"
    ls -R ..
fi

echo -e "\nExperiment 3 executed successfully."
