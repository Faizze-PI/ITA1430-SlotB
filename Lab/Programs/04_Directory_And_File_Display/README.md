# Experiment 4: Directory and File Display Commands

## Aim
To execute and understand `ls`, `cat`, and `mkdir` commands in Kali Linux.

## Theory
### 1. `ls` Command
Lists directory contents, filenames, and metadata.
* **Syntax:** `ls [options] [directory]`
* **Key Flags:**
  * `-l`: Long listing format showing permissions, hard link count, owner, group, file size, and timestamp.
  * `-a`: Lists all entries including hidden files starting with a dot (`.`).
  * `-h`: Human-readable file sizes (`K`, `M`, `G`).

### 2. `cat` Command
`cat` (concatenate) is used to read, concatenate, and print file contents to the standard output.
* **Syntax:** `cat [options] <filename>`
* **Key Flags:**
  * `-n`: Number all output lines.
  * `-b`: Number non-empty output lines.

### 3. `mkdir` Command
Creates one or more new directories.
* **Syntax:** `mkdir [options] <directory_name>`
* **Key Flags:**
  * `-p`: Create parent directories as needed without throwing an error if the directory exists.

## Procedure
1. Create a new directory named `EthicalHacking` using `mkdir EthicalHacking`.
2. Inspect directory listings with `ls`, `ls -l`, and `ls -la`.
3. Create a text file (`file.txt`).
4. Display its contents using `cat file.txt`.

## Output
```text
kali@kali:~$ mkdir EthicalHacking
kali@kali:~$ ls -la
total 16
drwxr-xr-x 3 kali kali 4096 Oct  8 16:32 .
drwxr-xr-x 5 kali kali 4096 Oct  8 16:30 ..
drwxr-xr-x 2 kali kali 4096 Oct  8 16:32 EthicalHacking
-rw-r--r-- 1 kali kali  152 Oct  8 16:30 file.txt
-rwxr-xr-x 1 kali kali  680 Oct  8 16:30 run_exp04.sh
-rw-r--r-- 1 kali kali 1024 Oct  8 16:30 README.md

kali@kali:~$ cat file.txt
This is a sample file for Experiment 4: Directory and File Display Commands.
It demonstrates the use of cat to display contents and ls to display directory items.
```

## Result
Successfully executed and understood `ls`, `cat`, and `mkdir` commands.
