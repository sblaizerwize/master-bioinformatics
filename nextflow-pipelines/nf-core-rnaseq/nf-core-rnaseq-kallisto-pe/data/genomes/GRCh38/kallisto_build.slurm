#!/bin/bash
# Rebuild kallisto index
#SBATCH --job-name=build-kallisto-idx
#SBATCH --output=build-kallisto-idx-%j.out
#SBATCH --error=build-kallisto-idx-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

# ===========================================================
# This script launches a batch job to obtain the kallisto.idx file
# Input: Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
# Output: kallisto.idx
# Command: sbatch kallisto_build.slurm
# ===========================================================

# Load conda module
module load Miniconda3/23.10.0-1

echo "Activating conda environment"

# Create conda env
source $(conda info --base)/etc/profile.d/conda.sh
conda activate seqkit

echo "Building kallisto index"

# Build kallisto index
kallisto index -i kallisto.idx \
               -t $SLURM_CPUS_PER_TASK \
               Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz

# Close conda env
conda deactivate

echo "Kallisto index build complete"