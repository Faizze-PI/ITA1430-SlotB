# Experiment 6: File Creation and Download Commands

## Aim
To execute and understand `touch`, `pwd`, and `wget` commands in Kali Linux.

## Theory
### 1. `touch` Command
Used to create empty files or update the access and modification timestamps of existing files.
* **Syntax:** `touch [options] <filename>`
* **Key Flags:**
  * `-a`: Change only the access time.
  * `-m`: Change only the modification time.
  * `-c`: Do not create any files if they do not exist.

### 2. `pwd` Command
`pwd` (print working directory) prints the full absolute pathname of the current working directory.
* **Syntax:** `pwd [options]`
* **Key Flags:**
  * `-L`: Display logical current working directory (respecting symlinks).
  * `-P`: Display physical current working directory (resolving symlinks).

### 3. `wget` Command
A non-interactive network downloader supporting HTTP, HTTPS, and FTP protocols. Essential in penetration testing for downloading exploit scripts, wordlists, and tools from remote repositories.
* **Syntax:** `wget [options] <URL>`
* **Key Flags:**
  * `-O <output_file>`: Write downloaded documents to a specified file.
  * `-q`: Turn off wget output (quiet mode).
  * `-c`: Resume getting a partially downloaded file.

## Procedure
1. Determine the active directory with `pwd`.
2. Create an empty file named `sample.txt` using `touch sample.txt`.
3. Download a remote file using `wget <URL>`.
4. Verify files with `ls -l`.

## Output
```text
kali@kali:~$ pwd
/home/kali/Desktop/ITA1430/06_File_Creation_And_Download

kali@kali:~$ touch sample.txt
kali@kali:~$ ls -l sample.txt
-rw-r--r-- 1 kali kali 0 Oct  8 16:34 sample.txt

kali@kali:~$ wget -q -O downloaded_test.txt "https://example.com"
kali@kali:~$ ls -lh downloaded_test.txt
-rw-r--r-- 1 kali kali 1.2K Oct  8 16:34 downloaded_test.txt
```

## Result
Successfully executed `touch`, `pwd`, and `wget` commands.
