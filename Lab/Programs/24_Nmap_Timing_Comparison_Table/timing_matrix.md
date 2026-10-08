# Nmap Timing Templates (T0 to T5) Reference Matrix

| Template Name | CLI Flag | IDS Evasion Level | Packet Delay / Wait Time | Use Case |
| :--- | :--- | :--- | :--- | :--- |
| **Paranoid** | `-T0` | Maximum (Highest Stealth) | Waits 5 minutes between each probe packet | Bypassing strict stateful IDS/IPS threshold alerts; exceptionally slow. |
| **Sneaky** | `-T1` | High Stealth | Waits 15 seconds between each probe packet | Slow scanning used to evade detection by signature-based network defenses. |
| **Polite** | `-T2` | Moderate Stealth | Slows down scan, 10x slower than normal | Minimizes network bandwidth usage and reduces target server load. |
| **Normal** | `-T3` | Default / None | Dynamic adaptation based on packet round-trip time | Standard baseline scanning on typical enterprise networks. |
| **Aggressive** | `-T4` | Detectable | Caps max probe timeout to 1.25s, max RTT to 10s | Rapid scanning on fast, reliable, modern local networks. |
| **Insane** | `-T5` | Highly Detectable | Caps max timeout to 5ms, max RTT to 75ms | Ultra-fast scans; risks dropped packets and false negatives on noisy networks. |
