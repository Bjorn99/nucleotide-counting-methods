#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Assign the input filename
filename=$1

# use awk to count nucleotides A, C, G, T (case-sensitive)
bioawk -c fastx '{
    a = g = c = t = 0;
    for (i = 1; i <= length($seq); i++) {
        nucleotide = substr($seq, i, 1);
        # Count each nucleotide
        if (nucleotide == "A" || nucleotide == "a") a++;
        else if (nucleotide == "C" || nucleotide == "c") c++;
        else if (nucleotide == "G" || nucleotide == "g") g++;
        else if (nucleotide == "T" || nucleotide == "t") t++;
    }
    # Print the count of the current sequences
    print "A:", a, "C:", c, "G:", g, "T:", t;
}' "$filename"
