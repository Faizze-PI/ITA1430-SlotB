#!/bin/bash
# ==============================================================================
# Experiment 2: File Viewing Commands
# Commands: less, more, vi
# ==============================================================================

echo "=========================================================="
echo "  Experiment 2: File Viewing Commands (less, more, vi)"
echo "=========================================================="

FILE="sample_view.txt"

if [ ! -f "$FILE" ]; then
    echo "Error: $FILE does not exist. Please ensure sample_view.txt is present."
    exit 1
fi

echo -e "\n[1] Demonstration of 'more' command:"
echo "-----------------------------------"
echo "Executing: more -5 $FILE (displaying initial 5 lines with prompt)"
more -5 "$FILE" < /dev/null || cat "$FILE" | head -n 5

echo -e "\n[2] Demonstration of 'less' command:"
echo "-----------------------------------"
echo "Note: In interactive use, run: less $FILE (press 'q' to quit, '/' to search)"
echo "Displaying file content via less non-interactively:"
cat "$FILE" | head -n 10

echo -e "\n[3] Information on 'vi' editor:"
echo "-----------------------------------"
echo "Command to open editor: vi $FILE"
echo "Quick vi Cheatsheet:"
echo "  - Press 'i' to enter INSERT mode"
echo "  - Press 'Esc' to return to COMMAND mode"
echo "  - Type ':w' to save changes"
echo "  - Type ':q' to quit (or ':wq' to save and exit, ':q!' to discard changes)"

echo -e "\nExperiment 2 executed successfully."
