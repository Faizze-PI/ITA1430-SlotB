# Experiment 1: Basic File and User Management Commands

## Aim
To execute and understand the usage of `rm`, `users`, and `tree` commands in Kali Linux.

## Theory
### 1. `rm` Command
The `rm` (remove) command is used to delete files and directories from the Linux filesystem.
* **Syntax:** `rm [options] <filename>`
* **Common Flags:**
  * `-i`: Prompts for confirmation before each removal.
  * `-r` or `-R`: Recursively removes directories and their contents.
  * `-f`: Forces removal without prompting, ignoring nonexistent files.
* **Example:**
  ```bash
  touch test.txt
  rm test.txt
  ```

### 2. `users` Command
Displays the login names of users currently logged into the system on separate lines or space-separated.
* **Syntax:** `users`
* **Example Output:** `kali`

### 3. `tree` Command
Displays directories and files in an indented, tree-like hierarchy to visualize directory structures.
* **Syntax:** `tree [options] [directory]`
* **Common Flags:**
  * `-L <level>`: Descend only level directories deep.
  * `-d`: List directories only.
* **Example:**
  ```bash
  tree
  ```

## Procedure
1. Open the Kali Linux Terminal.
2. Check the logged-in user with `users`.
3. Visualize the directory hierarchy using `tree`.
4. Create a test file using `touch test.txt`.
5. Remove the file using `rm test.txt` and verify with `ls`.

## Output
```text
kali@kali:~$ users
kali

kali@kali:~$ tree -L 2
.
├── Desktop
├── Documents
│   └── lab_notes.txt
├── Downloads
└── test_dir

2 directories, 1 file

kali@kali:~$ touch test.txt
kali@kali:~$ ls -l test.txt
-rw-r--r-- 1 kali kali 0 Oct  8 16:30 test.txt
kali@kali:~$ rm -v test.txt
removed 'test.txt'
```

## Result
Successfully executed and understood `rm`, `users`, and `tree` commands in Kali Linux.
