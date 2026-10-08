# Experiment 22: Packet Analyzer Tool (Tcpdump)

## Aim
To capture, filter, and inspect network traffic from the command-line interface using `tcpdump`.

## Theory
`tcpdump` is the premier command-line packet analyzer for Unix-like operating systems. It captures packet data transmitted over a network and displays protocol headers and content matching specified boolean filter expressions.
* **Syntax:** `tcpdump [options] [filter_expression]`
* **Key Flags:**
  * `-i <interface>`: Specifies the network interface to listen on (e.g. `eth0`, `wlan0`, `any`).
  * `-c <count>`: Exit after receiving `count` packets.
  * `-n`: Do not convert host addresses or port numbers to names (speeds up capture).
  * `-X` / `-XX`: Print data in both hex and ASCII formats.
  * `-w <file.pcap>`: Write raw packets to a `.pcap` file for later inspection in Wireshark.
  * `-r <file.pcap>`: Read packets from a saved `.pcap` file.

## Procedure
1. Open the terminal with root/sudo privileges.
2. List available interfaces: `tcpdump -D`.
3. Capture packets on the active interface: `sudo tcpdump -i eth0 -c 10`.
4. Capture traffic on port 80: `sudo tcpdump -i eth0 port 80 -n`.
5. Save captured packets to disk: `sudo tcpdump -i eth0 -c 50 -w capture.pcap`.

## Sample Output
```text
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on eth0, link-type EN10MB (Ethernet), snapshot length 262144 bytes
17:43:01.123456 IP 192.168.1.10.54321 > 93.184.216.34.80: Flags [S], seq 12345678, win 64240, length 0
17:43:01.145678 IP 93.184.216.34.80 > 192.168.1.10.54321: Flags [S.], seq 87654321, ack 12345679, win 65535, length 0
2 packets captured
2 packets received by filter
0 packets dropped by kernel
```

## Result
Successfully captured and analyzed packets from the command line using `tcpdump`.
