# Experiment 7: Navigation and Copy Commands

## Aim
To execute and understand `cd`, `cp`, and `ls` commands in Kali Linux.

## Theory
### 1. `cd` Command
Changes the current working directory in the Linux shell.
* **Syntax:** `cd [directory]`
* **Shortcuts:**
  * `cd ~` or `cd`: Change to current user's home directory.
  * `cd ..`: Move up one level to the parent directory.
  * `cd -`: Switch to the previous working directory.

### 2. `cp` Command
Copies files and directories from source to destination.
* **Syntax:** `cp [options] <source> <destination>`
* **Key Flags:**
  * `-r` or `-R`: Copy directories recursively.
  * `-v`: Verbose, displays filenames as they are copied.
  * `-i`: Interactive prompt before overwriting.

### 3. `ls` Command
Lists files and directories to verify copying and navigation operations.

## Procedure
1. Create a subdirectory (`mkdir Documents`).
2. Copy `file1.txt` to `backup.txt` using `cp file1.txt backup.txt`.
3. Copy `file1.txt` into `Documents/`.
4. Switch directory with `cd Documents`.
5. List contents with `ls -la`.
6. Return using `cd ..`.

## Output
```text
kali@kali:~$ mkdir Documents
kali@kali:~$ cp -v file1.txt backup.txt
'file1.txt' -> 'backup.txt'

kali@kali:~$ cp -v file1.txt Documents/
'file1.txt' -> 'Documents/file1.txt'

kali@kali:~$ cd Documents
kali@kali:~/Documents$ ls -la
total 12
drwxr-xr-x 2 kali kali 4096 Oct  8 16:35 .
drwxr-xr-x 3 kali kali 4096 Oct  8 16:35 ..
-rw-r--r-- 1 kali kali   75 Oct  8 16:35 file1.txt

kali@kali:~/Documents$ cd ..
kali@kali:~$ ls -l file1.txt backup.txt
-rw-r--r-- 1 kali kali 75 Oct  8 16:35 backup.txt
-rw-r--r-- 1 kali kali 75 Oct  8 16:35 file1.txt
```

## Result
Successfully executed `cd`, `cp`, and `ls` commands.
