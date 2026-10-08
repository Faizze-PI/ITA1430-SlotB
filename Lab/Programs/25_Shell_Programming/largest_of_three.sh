#!/bin/bash
# ==============================================================================
# Experiment 25 (ii): Find the Biggest of Three Numbers
# ==============================================================================

if [ "$#" -eq 3 ]; then
    a=$1
    b=$2
    c=$3
else
    echo "Enter three numbers:"
    read -r a b c
fi

# Validate integer inputs
if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ && "$c" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please provide three valid integers."
    exit 1
fi

if [ "$a" -ge "$b" ] && [ "$a" -ge "$c" ]; then
    echo "$a is largest"
elif [ "$b" -ge "$a" ] && [ "$b" -ge "$c" ]; then
    echo "$b is largest"
else
    echo "$c is largest"
fi
