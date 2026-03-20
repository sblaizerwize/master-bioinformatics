#!/bin/bash
# ==================== SLURM HEADER ====================
#SBATCH --job-name=download-sra-data-2
#SBATCH --output=download-sra-data-2-%j.out
#SBATCH --error=download-sra-data-2-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=2G              # memory
#SBATCH --time=18:00:00     # time limit
#SBATCH --partition=short      # job's size
# ==================== BASH COMMANDS ====================

# ==================== HOW TO RUN IT ====================
# Go to /data/reads
# Run: sbatch download_sra.slurm 
# ==================== HOW TO RUN IT ====================

# Load Nexflow module 
module load cesga/2025
module load sra-toolkit/3.2.1

# Pigz is available by default in the CESGA cluster: which pigz returned /bin/pigz
#module load pigz

# SRA Study SRP479528
# 44 LOCRC samples from SRR27320655 to SRR27320698 

# SRA Study SRP357925
# 42 EOCRC samples from SRR17866817 to SRR17866858 

# Specify working directory
cd /mnt/netapp2/Store_uni/home/otras/cim/smv/data

# Create a loop to sequentially download each file
for acc in SRR17866834 SRR17866848 SRR27320676; do 
#for i in $(seq 17866838 17866858); do
    # acc=SRR${i}
    echo "Processing $acc ..."
    fasterq-dump $acc \
        --split-files \
        --threads 8 \
        --outdir . \
        --temp /mnt/lustre/scratch/nlsas/home/otras/cim/smv   
    # Compress fastq files into fastq.gz files      
    pigz -p 8 -v *.fastq    
done

# Compress fastq files into fastq.gz files 
#gzip -v *.fastq 
#pigz -p 8 -v *.fastq

