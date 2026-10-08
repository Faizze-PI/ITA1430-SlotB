# Experiment 23: Port Scanning Tools (Extended)

## Aim
To perform comprehensive full-range port scanning and deep service interrogation across all 65,535 TCP ports.

## Theory
By default, Nmap scans the top 1,000 most common ports. Attackers and system administrators often bind sensitive services (backdoors, administrative consoles, staging databases) to high, non-standard port numbers (e.g., port 8080, 8443, 9000, 31337) to evade standard scans.
* **Full Range Flags:**
  * `-p 1-65535` or `-p-`: Scans every single port from 1 to 65535.
  * `-sV`: Identifies the exact application and version running on any newly discovered high-number port.
  * `-A`: Runs OS detection, version detection, script scanning, and traceroute.

## Procedure
1. Set the target IP address.
2. Execute a full port scan: `nmap -p 1-65535 target-ip`.
3. Interrogate discovered ports with version detection: `nmap -sV -p <open_ports> target-ip`.
4. Perform comprehensive analysis with `nmap -A target-ip`.

## Output
```text
kali@kali:~$ nmap -p 1-65535 -sV -A 192.168.1.10
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:48 IST
Nmap scan report for 192.168.1.10
Host is up (0.00052s latency).
Not shown: 65532 closed tcp ports (reset)
PORT      STATE SERVICE VERSION
22/tcp    open  ssh     OpenSSH 8.2p1 Ubuntu
80/tcp    open  http    Apache httpd 2.4.41 ((Ubuntu))
8080/tcp  open  http    Apache Tomcat 9.0.41
Device type: general purpose
Running: Linux 5.X
OS details: Linux 5.4 - 5.15
Nmap done: 1 IP address (1 host up) scanned in 28.45 seconds
```

## Result
Successfully identified hidden services and complete port exposures across all port ranges.
