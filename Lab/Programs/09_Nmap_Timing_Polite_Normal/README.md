# Experiment 9: Nmap Timing and Performance Commands

## Aim
To perform IDS evasion and timing scans using Nmap in Kali Linux.

## Theory
Timing templates control the speed, packet delays, and probe timeouts during an Nmap scan. Nmap offers six timing templates numbered from `0` to `5` (`-T0` to `-T5`).

### 1. Polite Scan (`-T2`)
* Slows down the scan to use less network bandwidth and target machine resources.
* Introduces inter-probe delays to reduce the chance of triggering alert thresholds in Intrusion Detection Systems (IDS) and firewalls.
* Ten times slower than a normal scan.

### 2. Normal Scan (`-T3`)
* Default Nmap timing policy if no `-T` option is specified.
* Balanced approach optimized for speed and reliability on standard networks.

## Procedure
1. Identify the authorized target IP address.
2. Execute Polite scan: `nmap -T2 192.168.1.10`.
3. Execute Normal scan: `nmap -T3 192.168.1.10`.
4. Compare scan duration, packet transmission rate, and results.

## Output
```text
kali@kali:~$ nmap -T2 -p 22,80,443 192.168.1.10
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:38 IST
Nmap scan report for 192.168.1.10
Host is up (0.00039s latency).

PORT    STATE SERVICE
22/tcp  open  ssh
80/tcp  open  http
443/tcp closed https

Nmap done: 1 IP address (1 host up) scanned in 3.42 seconds

kali@kali:~$ nmap -T3 -p 22,80,443 192.168.1.10
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:38 IST
Nmap scan report for 192.168.1.10
Host is up (0.00035s latency).

PORT    STATE SERVICE
22/tcp  open  ssh
80/tcp  open  http
443/tcp closed https

Nmap done: 1 IP address (1 host up) scanned in 0.28 seconds
```

## Result
Successfully executed and compared Nmap timing and performance scans.
