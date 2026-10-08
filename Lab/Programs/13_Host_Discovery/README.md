# Experiment 13: Host Discovery

## Aim
To discover active hosts in a network subnet using Nmap ping sweep.

## Theory
Host discovery determines whether computers and network devices are online and active before performing intensive port scanning.
* **Command Flag:** `-sn` (formerly known as `-sP`).
* **Mechanism:**
  * When run as privileged (`root`) on local Ethernet subnets, Nmap sends ARP requests (extremely fast and cannot be blocked by host firewalls).
  * Across routers (remote subnets), Nmap transmits ICMP echo request, TCP SYN to port 443, TCP ACK to port 80, and ICMP timestamp requests.
* **Benefits:** Saves significant bandwidth and time by filtering out inactive IP addresses across large subnets (e.g. `/24` or `/16`).

## Procedure
1. Determine local subnet range (e.g. using `ip a` or `ipconfig`).
2. Run ping sweep: `nmap -sn 192.168.1.0/24`.
3. Note all responsive IP addresses and MAC addresses.

## Sample Output
```text
Nmap scan report for 192.168.1.1
Host is up (0.0012s latency).
MAC Address: 00:11:22:33:44:55 (Router Manufacturer)
Nmap scan report for 192.168.1.10
Host is up (0.00045s latency).
Nmap done: 256 IP addresses (2 hosts up) scanned in 2.15 seconds
```

## Result
Successfully discovered active hosts in the target network.
