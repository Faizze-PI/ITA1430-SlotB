#!/bin/bash
# ==============================================================================
# Experiment 24: Nmap Timing & Performance Comparison (T0 to T5)
# ==============================================================================

TARGET="${1:-127.0.0.1}"

echo "=========================================================="
echo "  Experiment 24: Nmap Timing Template Comparison"
echo "  Target: $TARGET"
echo "=========================================================="

echo -e "\n[1] Observation Matrix (T0 - T5):"
echo "--------------------------------------------------------"
cat timing_matrix.md

if ! command -v nmap &> /dev/null; then
    echo -e "\nNotice: 'nmap' is not installed in the current environment."
    exit 0
fi

echo -e "\n[2] Benchmarking Fast Templates (-T3, -T4, -T5) on Port 80:"
echo "--------------------------------------------------------"

for T in 3 4 5; do
    echo -e "\nExecuting -T$T:"
    time nmap -T"$T" -p 80 "$TARGET"
done

echo -e "\nNote: T0 (5m delay/probe) and T1 (15s delay/probe) take hours across multiple ports"
echo "and are primarily used in high-stealth IDS evasion scenarios."

echo -e "\nExperiment 24 executed successfully."
