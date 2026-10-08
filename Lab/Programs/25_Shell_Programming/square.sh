#!/bin/bash
# ==============================================================================
# Experiment 25 (i): Read a Number and Find Its Square
# ==============================================================================

if [ -n "$1" ]; then
    n=$1
else
    echo "Enter a number:"
    read -r n
fi

# Validate integer input
if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Input must be a valid integer."
    exit 1
fi

square=$((n * n))
echo "Square = $square"
