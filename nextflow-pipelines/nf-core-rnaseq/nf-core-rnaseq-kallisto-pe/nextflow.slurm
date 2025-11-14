#!/bin/bash
#SBATCH --job-name=rnaseq-pipe1-hpc
#SBATCH --output=rnaseq-pipe1-hpc-%j.out
#SBATCH --error=rnaseq-pipe1-hpc-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

# Load Nexflow module 
module load Nextflow/25.04.6

# Define environment variables for Apptainer
export APPTAINERENV_TMPDIR=$TMPDIR
export APPTAINERENV_NXF_TASK_WORKDIR=$PWD
export APPTAINERENV_NXF_DEBUG=1

# Run nf-core/rnaseq pipeline
nextflow run nf-core/rnaseq \
    -profile unavcluster \
    -params-file params_rnaseq.yaml \
    -c hpc.config \
