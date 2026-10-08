# Experiment 10: Free, Sort, and History Commands

## Aim
To execute and understand the usage of `free`, `sort`, and `history` commands in Kali Linux.

## Theory
### 1. `free` Command
Displays the total amount of free and used physical memory (RAM) and swap memory in the system, as well as the buffers and caches used by the kernel.
* **Syntax:** `free [options]`
* **Key Flags:**
  * `-h`: Shows output in human-readable notation (e.g. `GiB`, `MiB`).
  * `-m`: Shows output in megabytes.

### 2. `sort` Command
Sorts lines of text files alphabetically or numerically.
* **Syntax:** `sort [options] <filename>`
* **Key Flags:**
  * `-r`: Reverse sorting order.
  * `-n`: Numerical sort (sorts by number value rather than ASCII character value).
  * `-u`: Unique lines only (removes duplicate entries).

### 3. `history` Command
Lists the record of commands previously executed in the current shell session.
* **Syntax:** `history [number]`
* **Key Features:**
  * `!n`: Re-execute command numbered `n`.
  * `!!`: Re-execute the immediately previous command.

## Procedure
1. Inspect memory usage with `free` and `free -h`.
2. Create an unsorted list in `fruit_list.txt`.
3. Sort alphabetically: `sort fruit_list.txt`.
4. Sort in reverse order: `sort -r fruit_list.txt`.
5. Display command history: `history 10`.

## Sample Output
```text
$ free -h
              total        used        free      shared  buff/cache   available
Mem:          7.6Gi       3.2Gi       2.1Gi       120Mi       2.3Gi       4.0Gi
Swap:         2.0Gi          0B       2.0Gi

$ sort fruit_list.txt
Apple
Banana
Cherry
Grapes
Mango
Orange
Pineapple
Watermelon
```

## Result
Successfully executed `free`, `sort`, and `history` commands.
