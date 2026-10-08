# Experiment 19: Wireshark Sniffer for Network Traffic Analysis

## Aim
To capture, inspect, and analyze live network packets and protocols using the Wireshark packet analyzer.

## Theory
Wireshark is the world’s foremost and widely-used network protocol analyzer. It lets security professionals see what’s happening on their network at a microscopic level.
* **Core Capabilities:**
  * Deep inspection of hundreds of protocols.
  * Live capture and offline analysis (reading `.pcap` / `.pcapng` files).
  * Color-coded packet list for rapid visual identification.
  * Reassembly of fragmented TCP streams into readable application-layer dialogues.
* **Security Uses:** Analyzing cleartext credential exposures (HTTP, FTP, Telnet), detecting malware beaconing, identifying port scan sweeps, and troubleshooting packet transmission errors.

## Procedure
1. Open Wireshark from the Kali Linux Application Menu or terminal (`wireshark &`).
2. Select the active network interface (e.g. `eth0`, `wlan0`, or `any`).
3. Click the blue shark fin icon to start packet capture.
4. Generate network traffic (e.g., browse a website or execute `ping 8.8.8.8`).
5. Stop packet capture.
6. Apply display filters (e.g. `dns`, `icmp`, or `http`).
7. Inspect the three panes:
   * **Packet List** (top)
   * **Packet Details / Protocol Dissection** (middle)
   * **Packet Bytes / Hex Dump** (bottom)

## Output
```text
kali@kali:~$ wireshark &
[1] 14220
Running as user "kali" and group "kali".
Wireshark 4.0.8 (Git v4.0.8 packaged as 4.0.8-1)

[Packet Capture Session Protocol Breakdown]
Frame 1: 74 bytes on wire (592 bits), 74 bytes captured on interface eth0
Ethernet II, Src: 08:bf:b8:da:75:e8, Dst: 00:11:22:33:44:55
Internet Protocol Version 4, Src: 192.168.1.10, Dst: 93.184.216.34
Transmission Control Protocol, Src Port: 54321, Dst Port: 80, Seq: 0, Len: 0
    Flags: 0x002 (SYN)
    [Connection Establish: 3-Way Handshake SYN Packet Captured]
```

## Result
Successfully captured and analyzed network traffic using Wireshark.
