# Experiment 25: Shell Programming

## Aim
To write, execute, and understand Bash shell programs for numerical calculations and conditional decision making.

## Programs & Theory

### (i) Read a Number and Find Its Square
Calculates the mathematical square of an integer using Bash arithmetic expansion `$(( expression ))`.
* **Script:** `square.sh`
* **Syntax:**
  ```bash
  #!/bin/bash
  echo "Enter a number:"
  read n
  square=$((n * n))
  echo "Square = $square"
  ```
* **Sample Execution:**
  ```text
  $ ./square.sh 5
  Square = 25
  ```

### (ii) Find the Biggest of Three Numbers
Compares three numerical inputs using logical AND (`&&`) and relational operators (`-ge` for greater than or equal to).
* **Script:** `largest_of_three.sh`
* **Syntax:**
  ```bash
  #!/bin/bash
  echo "Enter three numbers:"
  read a b c
  if [ $a -ge $b ] && [ $a -ge $c ]; then
      echo "$a is largest"
  elif [ $b -ge $a ] && [ $b -ge $c ]; then
      echo "$b is largest"
  else
      echo "$c is largest"
  fi
  ```
* **Sample Execution:**
  ```text
  $ ./largest_of_three.sh 10 25 15
  25 is largest
  ```

## Output
```text
kali@kali:~$ ./square.sh
Enter a number:
5
Square = 25

kali@kali:~$ ./largest_of_three.sh
Enter three numbers:
10 25 15
25 is largest
```

## Result
Successfully executed shell scripts for calculating squares and determining the largest of three numbers.
