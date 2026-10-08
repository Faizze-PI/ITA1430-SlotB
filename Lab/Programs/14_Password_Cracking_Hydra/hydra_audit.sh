#!/bin/bash
# ==============================================================================
# Experiment 14: Password Auditing Using Hydra
# Command: hydra -l admin -P passwords.txt ftp://<target>
# ==============================================================================

TARGET="${1:-127.0.0.1}"
SERVICE="${2:-ftp}"
USER_TARGET="admin"
PASS_FILE="passwords.txt"

echo "=========================================================="
echo "  Experiment 14: Password Auditing Using THC-Hydra"
echo "  Target: $SERVICE://$TARGET | User: $USER_TARGET"
echo "=========================================================="

if [ ! -f "$PASS_FILE" ]; then
    echo "Error: Password dictionary $PASS_FILE not found."
    exit 1
fi

if ! command -v hydra &> /dev/null; then
    echo "Notice: 'hydra' is not installed in the current environment."
    echo "To install on Kali/Debian: sudo apt update && sudo apt install -y hydra"
    echo -e "\nCommand demonstration syntax:"
    echo "  hydra -l $USER_TARGET -P $PASS_FILE $SERVICE://$TARGET"
    echo -e "\nExplanation of parameters:"
    echo "  -l <username> : Target username to test"
    echo "  -P <file>     : Path to password dictionary file"
    echo "  $SERVICE://   : Protocol target URI (e.g. ftp://, ssh://, http-post-form://)"
    exit 0
fi

echo "Executing Hydra against authorized target:"
echo "Command: hydra -l $USER_TARGET -P $PASS_FILE -t 4 -vV $SERVICE://$TARGET"
echo "--------------------------------------------------------"
hydra -l "$USER_TARGET" -P "$PASS_FILE" -t 4 -vV "$SERVICE://$TARGET" || true

echo -e "\nExperiment 14 execution completed."
