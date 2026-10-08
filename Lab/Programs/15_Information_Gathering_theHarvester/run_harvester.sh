#!/bin/bash
# ==============================================================================
# Experiment 15: Information Gathering Using theHarvester
# Command: theHarvester -d <domain> -b <source>
# ==============================================================================

DOMAIN="${1:-example.com}"
SOURCE="${2:-duckduckgo}" # duckduckgo/crtsh are open without API key requirements

echo "=========================================================="
echo "  Experiment 15: Information Gathering Using theHarvester"
echo "  Target Domain: $DOMAIN | Source Engine: $SOURCE"
echo "=========================================================="

if ! command -v theHarvester &> /dev/null; then
    echo "Notice: 'theHarvester' is not installed in the current environment."
    echo "To install on Kali Linux: sudo apt update && sudo apt install -y theharvester"
    echo -e "\nCommand demonstration syntax:"
    echo "  theHarvester -d $DOMAIN -b google -l 100"
    echo -e "\nExplanation of options:"
    echo "  -d <domain> : Company or target domain name"
    echo "  -b <source> : Data source (e.g. google, duckduckgo, bing, crtsh, linkedin)"
    echo "  -l <limit>  : Number of results to limit the query to"
    exit 0
fi

echo "Running theHarvester passive OSINT query..."
theHarvester -d "$DOMAIN" -b "$SOURCE" -l 50 || true

echo -e "\nExperiment 15 executed successfully."
