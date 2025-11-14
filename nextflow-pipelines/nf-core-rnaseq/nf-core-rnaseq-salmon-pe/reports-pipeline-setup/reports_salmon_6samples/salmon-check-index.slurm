#!/bin/bash
# Inspect salmon index folder
#SBATCH --job-name=inspect-salmon-idx
#SBATCH --output=inspect-salmon-idx-%j.out
#SBATCH --error=inspect-salmon-idx-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

# ===========================================================
# This script inspects the salmon index folder created by nf-core
# Command: sbatch salmon-check-index.slurm
# ===========================================================

# Load conda module
module load Miniconda3/23.10.0-1

echo "Activating conda environment"

# Create conda env
source $(conda info --base)/etc/profile.d/conda.sh
conda activate seqkit

echo "Inspecting salmon index"

# Check Salmon index
salmon index --inspect -i salmon

# Close conda env
conda deactivate

echo "Salmon index inspected"