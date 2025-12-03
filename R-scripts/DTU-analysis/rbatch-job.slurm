#!/bin/bash
#SBATCH --job-name=saturn_42_44
#SBATCH --output=saturn_42_44_%j.out
#SBATCH --error=saturn_42_44_%j.err
#SBATCH --time=12:00:00
#SBATCH --mem=64G
#SBATCH --cpus-per-task=16
#SBATCH --partition=short

# Load required modules
module load R/4.4.1-gfbf-2023b
module load R-bundle-Bioconductor/3.19-foss-2023b-R-4.4.1

# Load personal R library 
export R_LIBS_USER="$HOME/R/x86_64-pc-linux-gnu-library/4.4"

# Run the R script
Rscript Dtu_42_44crc.R