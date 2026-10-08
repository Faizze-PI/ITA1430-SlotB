# Wireshark Network Traffic Analysis Reference Guide

## 1. Launching Wireshark
* In Kali Linux GUI / Terminal:
  ```bash
  wireshark &
  ```
* For unprivileged packet capture permission:
  ```bash
  sudo dpkg-reconfigure wireshark-common
  sudo usermod -aG wireshark $USER
  ```

## 2. Essential Capture Filters (Applied BEFORE capture)
Capture filters reduce the volume of captured packets and use Berkeley Packet Filter (BPF) syntax:
* `host 192.168.1.10` - Capture only traffic to/from specified host
* `port 80 or port 443` - Capture only web traffic
* `not arp and not icmp` - Exclude ARP and ping packets

## 3. Essential Display Filters (Applied AFTER capture)
Display filters search through already recorded frames in the UI:
* `ip.addr == 192.168.1.10` - Filter all packets involving IP
* `tcp.port == 80` - Filter TCP port 80 traffic
* `http.request.method == "POST"` - Filter HTTP form submissions and credentials
* `dns.qry.name contains "google"` - Filter specific DNS queries
* `tcp.flags.syn == 1 and tcp.flags.ack == 0` - Filter TCP connection initiation requests

## 4. Following TCP Streams
1. Right-click any TCP packet in the upper packet list.
2. Select **Follow** -> **TCP Stream**.
3. Wireshark will reassemble the conversational payload in plaintext (red = client request, blue = server response).
