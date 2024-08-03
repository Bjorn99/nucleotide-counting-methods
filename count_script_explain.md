# Nucleotide  Counting Script Explanation

This markdown provides a detailed explanation of a Bash script disigned to count the occurences of the nucleotides 'A', 'C', 'G', 'T' in a DNA sequence contained in a specialized version of `awk` for processing biological data. You can use this script by implementing `bioawk` too. 


## Overview

The script reads a file containing a DNA sequence and counts how many times each nucleotide appears.

## Detailed Explanation

### Use your terminal emulator inside your Linux machine.

### 1. Shebang Line: `#!/bin/bash`
- This line tells the system to run the script using the Bash shell.

### 2. Check if a filename is provided

- `if [ "$#" -ne 1 ]; then`: This checks how many arguments were provided. `$#` denotes the number of arguments.

- `echo "Usage: $0 <filename>"`: This prints a usage message if the number of arguments is not equal to 1.

- `exit 1`: Exits the script with a status code of 1, indicating an error.


### 3. Assign the input filename

``filename=$1``

- Assigns the first argument provided to the script (the filename) to a variable named `filename`.

### 4. Use awk to count nucleotides



