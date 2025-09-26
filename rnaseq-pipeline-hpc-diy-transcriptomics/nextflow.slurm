#!/bin/bash
#SBATCH --job-name=rnaseq-pipe1-hpc
#SBATCH --output=rnaseq-pipe1-hpc-%j.out
#SBATCH --error=rnaseq-pipe1-hpc-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

# Load Nexflow module 
module load Nextflow/25.04.6

# Set the max heap size for JVM
export NXF_OPTS="-Xms500M -Xmx2G"

# Run Nextflow
nextflow run . -profile unavcluster
