# Experiment 8: Nmap Service Version and OS Detection

## Aim
To perform service version detection and operating system identification using Nmap in Kali Linux.

## Theory
Nmap (Network Mapper) is an open-source network security scanner used for network discovery, vulnerability detection, and security auditing.

### 1. Service Version Detection (`-sV`)
Probes open ports using the Nmap service and version detection database to determine the exact software name and version number running on listening ports.
* **Syntax:** `nmap -sV <target-ip>`
* **Utility:** Identifying obsolete versions vulnerable to known CVE exploits.

### 2. Operating System Detection (`-O`)
Sends a series of TCP and UDP packets to the target and examines the responses (TCP options, window sizes, IP ID sampling) against Nmap’s OS fingerprint database (`nmap-os-db`).
* **Syntax:** `sudo nmap -O <target-ip>`
* **Requirement:** Requires raw socket access (`sudo` / root).

### 3. Aggressive Scan (`-A`)
Combines multiple advanced scanning features into one single flag:
* Operating System Detection (`-O`)
* Service Version Detection (`-sV`)
* Default NSE Script Scanning (`-sC`)
* Traceroute (`--traceroute`)
* **Syntax:** `nmap -A <target-ip>`

## Procedure
1. Verify target host connectivity.
2. Run service detection: `nmap -sV 192.168.1.10`.
3. Run OS fingerprinting: `sudo nmap -O 192.168.1.10`.
4. Run aggressive scan: `nmap -A 192.168.1.10`.
5. Document discovered ports, service names, software versions, and detected operating systems.

## Sample Output
```text
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.5
80/tcp   open  http    Apache httpd 2.4.41 ((Ubuntu))
Device type: general purpose
Running: Linux 5.X
OS CPE: cpe:/o:linux:linux_kernel:5
OS details: Linux 5.4 - 5.15
```

## Result
Successfully performed service version detection and OS identification using Nmap.
