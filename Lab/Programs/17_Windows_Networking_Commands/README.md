# Experiment 17: Windows OS Commands Execution

## Aim
To study and execute common Windows networking commands used in network auditing, troubleshooting, and host verification (`tracert`, `ping`, `ipconfig`, `netstat`).

## Theory
### 1. `ipconfig`
Displays all current TCP/IP network configuration values and refreshes Dynamic Host Configuration Protocol (DHCP) and Domain Name System (DNS) settings.
* `ipconfig`: Displays IP address, subnet mask, and default gateway.
* `ipconfig /all`: Displays full configuration including physical (MAC) address, DHCP server, and DNS servers.

### 2. `ping`
Tests reachability of a host on an Internet Protocol (IP) network using ICMP Echo Request and Echo Reply messages.
* **Syntax:** `ping [options] <destination>`
* **Example:** `ping -n 4 google.com`

### 3. `tracert` (Traceroute)
Determines the path taken to a destination by sending ICMP echo messages with varying Time-to-Live (TTL) values.
* **Syntax:** `tracert [options] <destination>`
* **Example:** `tracert -d google.com`

### 4. `netstat` (Network Statistics)
Displays active TCP connections, ports on which the computer is listening, Ethernet statistics, the IP routing table, and IPv4/IPv6 statistics.
* **Syntax:** `netstat -an`
  * `-a`: Displays all active connections and listening ports.
  * `-n`: Displays addresses and port numbers in numerical form.

## Procedure
1. Open Windows Command Prompt (`cmd.exe`) or PowerShell.
2. Execute `ipconfig /all` to record the active interface and default gateway.
3. Test connectivity using `ping google.com`.
4. Trace network hops using `tracert google.com`.
5. Check listening and established ports using `netstat -an`.

## Output
```text
C:\Users\Faizze-PI> network_diagnostic.bat
==========================================================
  Experiment 17: Windows Networking Commands Execution
==========================================================

[1] Executing 'ipconfig /all' (Network Interface Configuration):
---------------------------------------------------------------
Windows IP Configuration
   Host Name . . . . . . . . . . . . : Nova-Terminus
   Node Type . . . . . . . . . . . . : Hybrid
   IP Routing Enabled. . . . . . . . : No

Wireless LAN adapter WiFi:
   IPv4 Address. . . . . . . . . . . : 10.48.29.251(Preferred)
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . : 10.48.29.75
   DNS Servers . . . . . . . . . . . : 10.48.29.75

[2] Executing 'ping -n 4 127.0.0.1' (ICMP Connectivity Test):
---------------------------------------------------------------
Pinging 127.0.0.1 with 32 bytes of data:
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
Packets: Sent = 4, Received = 4, Lost = 0 (0% loss)

[3] Executing 'tracert -d -h 5 127.0.0.1' (Route Tracing):
---------------------------------------------------------------
Tracing route to 127.0.0.1 over a maximum of 5 hops:
  1    <1 ms    <1 ms    <1 ms  127.0.0.1
Trace complete.

[4] Executing 'netstat -an' (Active Network Sockets):
---------------------------------------------------------------
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING
  TCP    0.0.0.0:445            0.0.0.0:0              LISTENING
  TCP    127.0.0.1:24830        0.0.0.0:0              LISTENING

Experiment 17 execution completed successfully.
```

## Result
Successfully executed and understood Windows networking commands.
