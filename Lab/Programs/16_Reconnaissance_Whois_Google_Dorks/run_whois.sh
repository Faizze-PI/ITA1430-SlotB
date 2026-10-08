#!/bin/bash
# ==============================================================================
# Experiment 16: Reconnaissance Using Google and Whois
# Commands: whois, Google Dork queries
# ==============================================================================

DOMAIN="${1:-example.com}"

echo "=========================================================="
echo "  Experiment 16: Reconnaissance Using Google and Whois"
echo "  Target Domain: $DOMAIN"
echo "=========================================================="

echo -e "\n[1] Executing WHOIS Query:"
echo "-----------------------------------"
if command -v whois &> /dev/null; then
    whois "$DOMAIN" | head -n 35
else
    echo "Notice: 'whois' tool not installed. (Install: sudo apt install whois)"
    echo "Simulated WHOIS output:"
    echo "Domain Name: EXAMPLE.COM"
    echo "Registry Domain ID: 2336799_DOMAIN_COM-VRSN"
    echo "Registrar WHOIS Server: whois.iana.org"
    echo "Updated Date: 2023-08-14T07:00:00Z"
    echo "Creation Date: 1995-08-14T04:00:00Z"
    echo "Registry Expiry Date: 2024-08-13T04:00:00Z"
fi

echo -e "\n[2] Google Dork Search Queries (Reference):"
echo "-----------------------------------"
cat google_dorks_reference.txt

echo -e "\nExperiment 16 executed successfully."
