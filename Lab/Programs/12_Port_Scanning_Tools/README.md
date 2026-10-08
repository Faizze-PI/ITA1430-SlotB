# Experiment 12: Port Scanning Tools

## Aim
To identify open ports and services running on a target system using Nmap TCP Connect and SYN Stealth scans.

## Theory
### 1. TCP Connect Scan (`-sT`)
* The operating system establishes a complete 3-way handshake (`SYN` $\rightarrow$ `SYN/ACK` $\rightarrow$ `ACK`).
* Default scan type for unprivileged users who do not have raw socket write permissions.
* Tends to be logged by target applications and firewalls.

### 2. TCP SYN Stealth Scan (`-sS`)
* Known as "half-open" scanning.
* The scanner transmits a `SYN` packet:
  * If target responds with `SYN/ACK`, the port is **open** (scanner sends `RST` to terminate immediately).
  * If target responds with `RST`, the port is **closed**.
  * If no response or ICMP unreachable received, the port is **filtered**.
* Faster and less likely to be logged by higher-level application logs.

## Procedure
1. Verify network connection to target host (`192.168.1.1`).
2. Run standard port scan: `nmap 192.168.1.1`.
3. Run stealth SYN scan: `sudo nmap -sS 192.168.1.1`.
4. Analyze open ports, states, and default services.

## Output
```text
kali@kali:~$ nmap 192.168.1.1
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:41 IST
Nmap scan report for 192.168.1.1
Host is up (0.0012s latency).
Not shown: 996 closed tcp ports (reset)
PORT     STATE SERVICE
22/tcp   open  ssh
53/tcp   open  domain
80/tcp   open  http
443/tcp  open  https

kali@kali:~$ sudo nmap -sS 192.168.1.1
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:41 IST
Nmap scan report for 192.168.1.1
Host is up (0.00095s latency).
Not shown: 996 closed tcp ports (reset)
PORT     STATE SERVICE
22/tcp   open  ssh
53/tcp   open  domain
80/tcp   open  http
443/tcp  open  https

Nmap done: 1 IP address (1 host up) scanned in 0.22 seconds
```

## Result
Open ports and running services were successfully identified.
