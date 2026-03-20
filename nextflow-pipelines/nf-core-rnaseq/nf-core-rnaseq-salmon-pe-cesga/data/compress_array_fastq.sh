#!/bin/bash
# ==================== SLURM HEADER ====================
#SBATCH --job-name=compress-fastq-array
#SBATCH --output=compress-fastq-array-%A_%a.out
#SBATCH --error=compress-fastq-array-%A_%a.err
#SBATCH --cpus-per-task=8       # 8 CPUs per task for pigz
#SBATCH --mem=4G                # Memory per task
#SBATCH --time=04:00:00         # Time limit per task
#SBATCH --partition=short       # Job's size
#SBATCH --array=0-2            # Adjust the range based on number of files (e.g., 0-43 for 44 files)
# ==================== BASH COMMANDS ====================

# Load necessary modules if needed
module load cesga/2025

# Specify working directory
cd /mnt/netapp2/Store_uni/home/otras/cim/smv/data

# Get list of fastq files (supply the list by modifying this array or via command line)
# Example: files=(SRR27320655_1.fastq SRR27320655_2.fastq ... )  # Populate with your file list
# For automation, you can generate the list dynamically if files follow a pattern
files=(*.fastq)  # Assumes all .fastq files in directory

# Get the file for this array task
file=${files[$SLURM_ARRAY_TASK_ID]}

# Check if file exists
if [ -f "$file" ]; then
    echo "Compressing $file with pigz using 8 threads..."
    pigz -p 8 -v "$file"
else
    echo "File $file not found for task $SLURM_ARRAY_TASK_ID"
fi