# Experiment 5: System Information Commands

## Aim
To execute and understand `uptime`, `date`, and `mv` commands in Kali Linux.

## Theory
### 1. `uptime` Command
Displays how long the system has been running, the current time, the number of currently logged in users, and system load averages over the past 1, 5, and 15 minutes.
* **Syntax:** `uptime [options]`
* **Key Flags:**
  * `-p`: Pretty print format showing uptime in human terms (e.g. `up 2 hours, 10 minutes`).
  * `-s`: Shows the exact timestamp when the system booted.

### 2. `date` Command
Displays or sets the system date and time.
* **Syntax:** `date [options] [+format]`
* **Example:** `date "+%Y-%m-%d %H:%M:%S"`

### 3. `mv` Command
Moves or renames files and directories.
* **Syntax:** `mv [options] <source> <destination>`
* **Key Flags:**
  * `-v`: Verbose output explaining what is being done.
  * `-i`: Prompts before overwriting an existing file.

## Procedure
1. Run `uptime` to check system operational duration.
2. Run `date` to view current system time.
3. Rename `file1.txt` to `file2.txt` using `mv file1.txt file2.txt`.
4. Verify using `ls`.

## Output
```text
kali@kali:~$ uptime
 16:33:15 up  4:12,  1 user,  load average: 0.15, 0.08, 0.02

kali@kali:~$ date
Thu Oct  8 16:33:15 IST 2026

kali@kali:~$ date "+%Y-%m-%d %H:%M:%S"
2026-10-08 16:33:15

kali@kali:~$ ls -l file1.txt
-rw-r--r-- 1 kali kali 64 Oct  8 16:30 file1.txt

kali@kali:~$ mv -v file1.txt file2.txt
renamed 'file1.txt' -> 'file2.txt'

kali@kali:~$ ls -l file2.txt
-rw-r--r-- 1 kali kali 64 Oct  8 16:30 file2.txt
```

## Result
Successfully executed `uptime`, `date`, and `mv` commands.
