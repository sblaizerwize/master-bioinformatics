#!/bin/bash
# ==================== SLURM HEADER ====================
#SBATCH --job-name=download-sra-data
#SBATCH --output=download-sra-data-%j.out
#SBATCH --error=download-sra-data-%j.err
#SBATCH --cpus-per-task=12      # number of CPUs
#SBATCH --mem=24G              # memory
#SBATCH --partition=short      # job's size
# ==================== BASH COMMANDS ====================

# ==================== HOW TO RUN IT ====================
# Go to /data/reads
# Run: sbatch download_sra.slurm 
# ==================== HOW TO RUN IT ====================

# Load Nexflow module 
module load SRA-Toolkit/3.0.10-gompi-2023a
module load pigz

# SRA Study SRP479528
# 44 LOCRC samples from SRR27320655 to SRR27320698 

# SRA Study SRP357925
# 42 EOCRC samples from SRR17866817 to SRR17866858 

# Create a loop to sequentially download each file 
for i in $(seq 17866817 17866858); do
    acc=SRR${i}
    echo "Processing $acc ..."
    fasterq-dump --split-files --threads 8 -p $acc
done 

# Compress fastq files into fastq.gz files 
#gzip -v *.fastq 
pigz -p 8 -v *.fastq

