# Experiment 21: Batch File Execution

## Aim
To create, configure, and execute a Windows Batch (`.bat`) script for task automation.

## Theory
A batch file is a script file in Windows containing a sequence of commands to be executed by the command-line interpreter (`cmd.exe`).
* **Key Commands:**
  * `@echo off`: Suppresses the display of the command prompt and subsequent commands as they are executed.
  * `echo`: Prints text to the screen.
  * `pause`: Suspends execution of a batch file and displays a message prompting the user to press a key to continue.
  * `rem`: Used for adding comments inside the batch file.
  * `%VARIABLE%`: Accesses built-in system environment variables like `%USERNAME%`, `%DATE%`, `%TIME%`.

## Procedure
1. Create a plain text file using a text editor (Notepad / VS Code).
2. Write the batch commands:
   ```batch
   @echo off
   echo Welcome to Ethical Hacking Lab
   pause
   ```
3. Save the file with the extension `.bat` (e.g. `sample.bat`).
4. Execute by opening Command Prompt or double-clicking `sample.bat`.

## Sample Output
```text
==========================================================
       Welcome to Ethical Hacking Laboratory (ITA1430)
==========================================================

Current Date and Time: Wed 10/07/2026 17:42:00
Current Logged-in User: Faizze-PI
Host Machine Name:     Nova-Terminus

Batch script execution completed successfully.

Press any key to continue . . .
```

## Result
Successfully created and executed a Windows batch file.
