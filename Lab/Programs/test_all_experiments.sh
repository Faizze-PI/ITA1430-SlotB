#!/bin/bash
# ==============================================================================
# Comprehensive Test Suite for ITA1430 Ethical Hacking Laboratory
# Tests all 25 Experiments in Order
# ==============================================================================

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PASS_COUNT=0
FAIL_COUNT=0
TOTAL_TESTS=25

print_header() {
    echo "======================================================================"
    echo "  RUNNING TEST SUITE: ITA1430 ETHICAL HACKING LAB EXPERIMENTS"
    echo "  Directory: $BASE_DIR"
    echo "======================================================================"
}

record_result() {
    local exp_num="$1"
    local exp_name="$2"
    local status="$3"
    local details="$4"

    if [ "$status" -eq 0 ]; then
        echo -e "[PASS] Exp $exp_num: $exp_name"
        ((PASS_COUNT++))
    else
        echo -e "[FAIL] Exp $exp_num: $exp_name - $details"
        ((FAIL_COUNT++))
    fi
}

# Run tests
print_header

# Exp 1
(cd "$BASE_DIR/01_Basic_File_And_User_Management" && ./run_exp01.sh > /dev/null 2>&1)
record_result "01" "Basic File and User Management (rm, users, tree)" $?

# Exp 2
(cd "$BASE_DIR/02_File_Viewing_Commands" && ./run_exp02.sh > /dev/null 2>&1)
record_result "02" "File Viewing Commands (less, more, vi)" $?

# Exp 3
(cd "$BASE_DIR/03_Tree_Head_Tail_Commands" && ./run_exp03.sh > /dev/null 2>&1)
record_result "03" "Tree, Head, and Tail Commands" $?

# Exp 4
(cd "$BASE_DIR/04_Directory_And_File_Display" && ./run_exp04.sh > /dev/null 2>&1)
record_result "04" "Directory and File Display (ls, cat, mkdir)" $?

# Exp 5
(cd "$BASE_DIR/05_System_Information_Commands" && ./run_exp05.sh > /dev/null 2>&1)
record_result "05" "System Information Commands (uptime, date, mv)" $?

# Exp 6
(cd "$BASE_DIR/06_File_Creation_And_Download" && ./run_exp06.sh > /dev/null 2>&1)
record_result "06" "File Creation and Download (touch, pwd, wget)" $?

# Exp 7
(cd "$BASE_DIR/07_Navigation_And_Copy" && ./run_exp07.sh > /dev/null 2>&1)
record_result "07" "Navigation and Copy Commands (cd, cp, ls)" $?

# Exp 8
(cd "$BASE_DIR/08_Nmap_Service_And_OS_Detection" && ./nmap_service_os.sh 127.0.0.1 > /dev/null 2>&1)
record_result "08" "Nmap Service Version and OS Detection" $?

# Exp 9
(cd "$BASE_DIR/09_Nmap_Timing_Polite_Normal" && ./nmap_timing_t2_t3.sh 127.0.0.1 > /dev/null 2>&1)
record_result "09" "Nmap Timing Polite and Normal (T2/T3)" $?

# Exp 10
(cd "$BASE_DIR/10_Free_Sort_History" && ./run_exp10.sh > /dev/null 2>&1)
record_result "10" "Free, Sort, and History Commands" $?

# Exp 11
(cd "$BASE_DIR/11_Nmap_Speed_Aggressive_Insane" && ./nmap_timing_t4_t5.sh 127.0.0.1 > /dev/null 2>&1)
record_result "11" "Nmap Timing Aggressive and Insane (T4/T5)" $?

# Exp 12
(cd "$BASE_DIR/12_Port_Scanning_Tools" && ./port_scan_syn.sh 127.0.0.1 > /dev/null 2>&1)
record_result "12" "Port Scanning Tools (TCP Connect / SYN Scan)" $?

# Exp 13
(cd "$BASE_DIR/13_Host_Discovery" && ./ping_sweep.sh 127.0.0.1/32 > /dev/null 2>&1)
record_result "13" "Host Discovery (Ping Sweep -sn)" $?

# Exp 14
(cd "$BASE_DIR/14_Password_Cracking_Hydra" && ./hydra_audit.sh 127.0.0.1 ftp > /dev/null 2>&1)
record_result "14" "Password Cracking Using Hydra" $?

# Exp 15
(cd "$BASE_DIR/15_Information_Gathering_theHarvester" && ./run_harvester.sh example.com > /dev/null 2>&1)
record_result "15" "Information Gathering Using theHarvester" $?

# Exp 16
(cd "$BASE_DIR/16_Reconnaissance_Whois_Google_Dorks" && ./run_whois.sh example.com > /dev/null 2>&1)
record_result "16" "Reconnaissance Using Whois and Google Dorks" $?

# Exp 17 (Windows Networking Script verified via verification suite)
[ -f "$BASE_DIR/17_Windows_Networking_Commands/network_diagnostic.bat" ] && [ -f "$BASE_DIR/17_Windows_Networking_Commands/README.md" ]
record_result "17" "Windows Networking Commands (network_diagnostic.bat)" $?

# Exp 18
(cd "$BASE_DIR/18_Vulnerability_Analysis_Nikto" && ./run_nikto.sh http://127.0.0.1 > /dev/null 2>&1)
record_result "18" "Vulnerability Analysis Using Nikto" $?

# Exp 19
(cd "$BASE_DIR/19_Wireshark_Network_Traffic_Analysis" && ./run_wireshark_notes.sh > /dev/null 2>&1)
record_result "19" "Wireshark Network Traffic Analysis" $?

# Exp 20
(cd "$BASE_DIR/20_Payload_Generation_MSFVenom" && ./msfvenom_demo.sh > /dev/null 2>&1)
record_result "20" "Payload Generation Using MSFVenom" $?

# Exp 21 (Windows Batch execution script)
[ -f "$BASE_DIR/21_Batch_File_Execution/sample.bat" ] && [ -f "$BASE_DIR/21_Batch_File_Execution/README.md" ]
record_result "21" "Batch File Execution (sample.bat)" $?

# Exp 22
(cd "$BASE_DIR/22_Packet_Analyzer_Tcpdump" && ./run_tcpdump.sh > /dev/null 2>&1)
record_result "22" "Packet Analyzer Tool (tcpdump)" $?

# Exp 23
(cd "$BASE_DIR/23_Advanced_Port_Scanning" && ./full_port_scan.sh 127.0.0.1 > /dev/null 2>&1)
record_result "23" "Advanced Port Scanning (Full Range)" $?

# Exp 24
(cd "$BASE_DIR/24_Nmap_Timing_Comparison_Table" && ./timing_benchmark.sh 127.0.0.1 > /dev/null 2>&1)
record_result "24" "Nmap Timing Comparison Table" $?

# Exp 25
(
    cd "$BASE_DIR/25_Shell_Programming"
    res1=$(./square.sh 5 2>&1)
    res2=$(./largest_of_three.sh 10 25 15 2>&1)
    [[ "$res1" =~ "25" ]] && [[ "$res2" =~ "25 is largest" ]]
)
record_result "25" "Shell Programming (square.sh & largest_of_three.sh)" $?

echo "======================================================================"
echo "  TEST SUMMARY: $PASS_COUNT / $TOTAL_TESTS PASSED ($FAIL_COUNT FAILED)"
echo "======================================================================"

if [ "$FAIL_COUNT" -eq 0 ]; then
    exit 0
else
    exit 1
fi
