# Counting Nucleotide Occurences Using `grep`

This document tries to explain how to count the occurences of individual nucleotides (A, C, G, T) in DNA sequences using `grep` command. The examples used here include `example.txt` file as well as `CDKN1B_cds.fasta` file. Both the files are separately included in this repo inside `eg_files` folder.


## Prerequisites

- Make sure you have grep installed. A bit of terminal knowledge is enough.
- Open terminal or command prompt.
- Navigate to the directory where the file is saved.

## Using `grep` to Count Nucleotides in Text Files

The following commands can be used to count the occurences of each nucleotide in the `example.txt` file.

### Count 'A'

```bash
grep -o 'A' example.txt | wc -l
```

### Count 'C'

```bash
grep -o 'C' example.txt | wc -l
```

### Count 'G'

```bash
grep -o 'G' example.txt | wc -l
```

### Count 'T'

```bash
grep -o 'T' example.txt | wc -l
```

## Using `grep` to Count Nucleotide in FASTA Files

When working with FASTA files, you may need to account for the format, which includes header lines. Here's how to count nucleotides in a FASTA file:

## Example FASTA file

Here's a FASTA file named `CDKN1B_cds.fasta' with the follwing content:

```FASTA
>lcl|NM_004064.4_cds_NP_004055.1_1 [gene=CDKN1B] [db_xref=CCDS:CCDS8653.1] [protein=cyclin-dependent kinase inhibitor 1B] [protein_id=NP_004055.1] [location=571..1167] [gbkey=CDS]
ATGTCAAACGTGCGAGTGTCTAACGGGAGCCCTAGCCTGGAGCGGATGGACGCCAGGCAGGCGGAGCACC
CCAAGCCCTCGGCCTGCAGGAACCTCTTCGGCCCGGTGGACCACGAAGAGTTAACCCGGGACTTGGAGAA
GCACTGCAGAGACATGGAAGAGGCGAGCCAGCGCAAGTGGAATTTCGATTTTCAGAATCACAAACCCCTA
GAGGGCAAGTACGAGTGGCAAGAGGTGGAGAAGGGCAGCTTGCCCGAGTTCTACTACAGACCCCCGCGGC
CCCCCAAAGGTGCCTGCAAGGTGCCGGCGCAGGAGAGCCAGGATGTCAGCGGGAGCCGCCCGGCGGCGCC
TTTAATTGGGGCTCCGGCTAACTCTGAGGACACGCATTTGGTGGACCCAAAGACTGATCCGTCGGACAGC
CAGACGGGGTTAGCGGAGCAATGCGCAGGAATAAGGAAGCGACCTGCAACCGACGATTCTTCTACTCAAA
ACAAAAGAGCCAACAGAACAGAAGAAAATGTTTCAGACGGTTCCCCAAATGCCGGTTCTGTGGAGCAGAC
GCCCAAGAAGCCTGGCCTCAGAAGACGTCAAACGTAA
```

### Count 'A'

```bash
grep -v '^>' example.fasta | grep -o 'A' | wc -l
```

### Count 'C'

```bash
grep -v '^>' example.fasta | grep -o 'C' | wc -l
```

### Count 'G'

```bash
grep -v '^>' example.fasta | grep -o 'G' | wc -l
```

### Count 'T'

```bash
grep -v '^>' example.fasta | grep -o 'T' | wc -l
```


## Note on FASTA files

When counting nucleotides in FASTA files, ensure that you are only counting from the sequence lines. The `grep` command above will work as expected since it will match 'A', 'C', 'G', and 'T' across all lines, including the header. adding `^>` will exclude the header line.