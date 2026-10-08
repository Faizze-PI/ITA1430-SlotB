# Experiment 11: Nmap Timing and Performance (Aggressive & Insane)

## Aim
To perform aggressive speed scanning (`-T4`) and insane speed scanning (`-T5`) using Nmap in Kali Linux.

## Theory
### 1. Aggressive Scan Template (`-T4`)
* Sets dynamic probe timeout ceiling to 1.25 seconds and maximum round-trip time (RTT) timeout to 10 seconds.
* Ideal for modern broadband connections, high-speed corporate LANs, and authorized penetration test engagements where time is limited and the connection is stable.

### 2. Insane Scan Template (`-T5`)
* Sets maximum probe timeout to 5 milliseconds and caps probe retransmissions to 2.
* Designed for ultra-fast networks or local high-speed Gigabit loops.
* **Trade-off:** High packet drops may result in missed open ports (false negatives) if network buffers saturate.

## Procedure
1. Set the target IP address (`192.168.1.1` or authorized test host).
2. Execute `-T4` scan: `nmap -T4 192.168.1.1`.
3. Execute `-T5` scan: `nmap -T5 192.168.1.1`.
4. Record elapsed time and open port detection accuracy.

## Output
```text
kali@kali:~$ nmap -T4 -F 192.168.1.1
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:40 IST
Nmap scan report for 192.168.1.1
Host is up (0.0018s latency).
Not shown: 96 closed tcp ports (reset)
PORT     STATE SERVICE
22/tcp   open  ssh
53/tcp   open  domain
80/tcp   open  http
443/tcp  open  https

Nmap done: 1 IP address (1 host up) scanned in 0.35 seconds

kali@kali:~$ nmap -T5 -F 192.168.1.1
Starting Nmap 7.94 ( https://nmap.org ) at 2026-10-08 16:40 IST
Nmap scan report for 192.168.1.1
Host is up (0.0015s latency).
PORT     STATE SERVICE
22/tcp   open  ssh
53/tcp   open  domain
80/tcp   open  http
443/tcp  open  https

Nmap done: 1 IP address (1 host up) scanned in 0.14 seconds
```

## Result
Successfully executed Nmap aggressive and insane speed scans.
