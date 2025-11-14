#!/bin/bash
# Rename paired-end reads

# ===========================================================
# This script launches a bash job to remove duplicated IDs from fastq files
# As a example, we used the script for 6 paired-end samples 
# Command: bash remove_fastq_duplicates.sh
# ===========================================================

# 1
zcat ENCSR000COQ1_1.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COQ1_1.clean.fastq.gz

zcat ENCSR000COQ1_2.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COQ1_2.clean.fastq.gz

# 2
zcat ENCSR000COQ2_1.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COQ2_1.clean.fastq.gz

zcat ENCSR000COQ2_2.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COQ2_2.clean.fastq.gz

# 3
zcat ENCSR000COR1_1.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COR1_1.clean.fastq.gz

zcat ENCSR000COR1_2.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COR1_2.clean.fastq.gz

# 4
zcat ENCSR000COR2_1.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COR2_1.clean.fastq.gz

zcat ENCSR000COR2_2.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000COR2_2.clean.fastq.gz

# 5
zcat ENCSR000CPO1_1.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000CPO1_1.clean.fastq.gz

zcat ENCSR000CPO1_2.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000CPO1_2.clean.fastq.gz

# 6
zcat ENCSR000CPO2_1.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000CPO2_1.clean.fastq.gz

zcat ENCSR000CPO2_2.fastq.gz | \
awk 'NR%4==1{print "@"FNR/4+1; next} NR%4!=1{print}' | gzip > ENCSR000CPO2_2.clean.fastq.gz








## Alternative 2
#seqkit rename ENCSR000COQ1_1.fastq.gz -o ENCSR000COQ1_1.clean.fastq.gz
#seqkit rename ENCSR000COQ1_2.fastq.gz -o ENCSR000COQ1_2.clean.fastq.gz
#seqkit rename ENCSR000COQ2_1.fastq.gz -o ENCSR000COQ2_1.clean.fastq.gz
#seqkit rename ENCSR000COQ2_2.fastq.gz -o ENCSR000COQ2_2.clean.fastq.gz
#seqkit rename ENCSR000COR1_1.fastq.gz -o ENCSR000COR1_1.clean.fastq.gz
#seqkit rename ENCSR000COR1_2.fastq.gz -o ENCSR000COR1_2.clean.fastq.gz
#seqkit rename ENCSR000COR2_1.fastq.gz -o ENCSR000COR2_1.clean.fastq.gz
#seqkit rename ENCSR000COR2_2.fastq.gz -o ENCSR000COR2_2.clean.fastq.gz
#seqkit rename ENCSR000CPO1_1.fastq.gz -o ENCSR000CPO1_1.clean.fastq.gz
#seqkit rename ENCSR000CPO1_2.fastq.gz -o ENCSR000CPO1_2.clean.fastq.gz
#seqkit rename ENCSR000CPO2_1.fastq.gz -o ENCSR000CPO2_1.clean.fastq.gz
#seqkit rename ENCSR000CPO2_2.fastq.gz -o ENCSR000CPO2_2.clean.fastq.gz

