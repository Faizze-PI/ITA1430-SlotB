# Experiment 2: File Viewing Commands

## Aim
To execute and understand the usage of `less`, `more`, and `vi` commands in Kali Linux.

## Theory
### 1. `more` Command
The `more` filter is an older pager used to display text files one screenful at a time. It allows forward navigation through the file.
* **Syntax:** `more <filename>`
* **Navigation:** Press `Space` for the next screen, `Enter` for the next line, `q` to quit.

### 2. `less` Command
The `less` command is an enhanced pager that is backward-compatible with `more`. It does not load the entire file into memory before displaying, making it extremely fast for large log files.
* **Syntax:** `less <filename>`
* **Key Features:**
  * Forward navigation (`f` or `Space`) and backward navigation (`b`).
  * In-file searching (`/pattern` to search forward, `?pattern` to search backward).
  * Press `q` to exit.

### 3. `vi` Editor
The `vi` (visual editor) is a standard Unix modal text editor with two primary modes:
* **Command Mode:** Used for moving the cursor, deleting text, and issuing commands (default mode).
* **Insert Mode:** Used for typing and editing text (entered by pressing `i` or `a`).
* **Basic Commands:**
  * `i`: Switch to Insert mode.
  * `Esc`: Return to Command mode.
  * `:w`: Save the file.
  * `:wq` or `:x`: Save and exit.
  * `:q!`: Exit without saving changes.

## Procedure
1. Create a sample text file (`sample_view.txt`).
2. Paginate through the file using `more sample_view.txt`.
3. Inspect and search through the file using `less sample_view.txt`.
4. Open and edit the text using `vi sample_view.txt`.

## Output
```text
kali@kali:~$ more sample_view.txt
Ethical Hacking Laboratory - ITA1430
Experiment 2: File Viewing Commands Demonstration File

Line 01: Ethical hacking is authorized practice of bypassing system security to identify potential data breaches.
Line 02: Kali Linux is an open-source Debian-based Linux distribution geared towards various information security tasks.
Line 03: The 'more' command displays text file contents one full screen at a time.
--More--(32%)

kali@kali:~$ less sample_view.txt
[Interactive Pager Opened - Navigate using Arrow keys, /pattern to search, q to exit]

kali@kali:~$ vi sample_view.txt
[Vim Text Editor Session - Command Mode / Insert Mode]
:wq
"sample_view.txt" 17L, 1084B written
```

## Result
Successfully executed and understood `less`, `more`, and `vi` commands.
