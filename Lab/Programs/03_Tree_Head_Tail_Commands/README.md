# Experiment 3: Tree, Head, and Tail Commands

## Aim
To execute and understand the usage of `tree`, `head`, and `tail` commands in Kali Linux.

## Theory
### 1. `head` Command
The `head` command outputs the first part of files. By default, it prints the first 10 lines of each file specified.
* **Syntax:** `head [options] <filename>`
* **Common Flags:**
  * `-n <number>`: Print the first `<number>` lines instead of 10.
  * `-c <bytes>`: Print the first `<bytes>` bytes.
* **Example:**
  ```bash
  head -n 3 student.txt
  ```

### 2. `tail` Command
The `tail` command outputs the last part of files. By default, it prints the last 10 lines.
* **Syntax:** `tail [options] <filename>`
* **Common Flags:**
  * `-n <number>`: Print the last `<number>` lines.
  * `-f`: Follow file growth in real-time (essential for live monitoring of `/var/log/auth.log` or syslog during attacks).
* **Example:**
  ```bash
  tail -n 3 student.txt
  ```

### 3. `tree` Command
Recursively displays directory contents in a branch-like visual hierarchy.

## Procedure
1. Create a sample text file (`student.txt`) with 20 numbered names.
2. View the top lines using `head student.txt`.
3. View the top 3 lines using `head -n 3 student.txt`.
4. View the bottom lines using `tail student.txt`.
5. View the bottom 3 lines using `tail -n 3 student.txt`.
6. Inspect the directory tree using `tree`.

## Sample Output
```text
head student.txt
1. Arun
2. Bala
3. Kumar

tail student.txt
18. Ravi
19. Suresh
20. Priya
```

## Result
Successfully executed and understood `tree`, `head`, and `tail` commands.
