#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Assign the input filename
filename=$1

# use awk to count nucleotides A, C, G, T (case-sensitive)
awk '/^>/ {if (seqlen) print "A:", a, "C:", c, "G:", g, "T:", t;
a=c=g=t=seqlen=0; next}
    {for (i = 1; i <= length($0); i++) {
        nucleotide = substr($0, i, 1);
        if (nucleotide == "A" || nucleotide == "a") a++;
        else if (nucleotide == "C" || nucleotide == "c") c++;
        else if (nucleotide == "G" || nucleotide == "g") g++;
        else if (nucleotide == "T" || nucleotide == "t") t++;
        seqlen++
    }}
    END {print "A:", a, "C:", c, "G:", g, "T:", t}' "$filename"
