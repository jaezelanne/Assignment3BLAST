#!/bin/bash

#download the genome sequence
URL="ftp://ftp.ensemblgenomes.org/pub/bacteria/release-42/fasta/bacteria_0_collection/escherichia_coli_str_k_12_substr_mg1655/cds/Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz"

#unzip the genome sequence
gunzip -kf Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz

#Create a BLAST index
formatdb -p F -o T -i Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa

#Make Mutations
msbar -sequence mysample.fa -count 100 -point 4 -block 0 -codon 0 -outseq mysample_mutated.fa

#Pairwise Alignment of original and mutated sequences
water -asequence mysample.fa -bsequence mysample_mutated.fa

#Run BLAST
blast2 -p blastn -e 0.001 -m 8 -d Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa -i mysample_mutated.fa -o /dev/stdout >> Blast_Tests_Results.txt

#Viewing the Results
cat Blast_Tests_Results.txt


