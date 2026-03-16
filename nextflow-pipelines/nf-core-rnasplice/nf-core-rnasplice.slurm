#!/bin/bash
#SBATCH --job-name=rnasplice
#SBATCH --output=rnasplice-%j.out
#SBATCH --error=rnasplice-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

# Load Nexflow module 
module load Nextflow/25.04.6

# Limit Nextflow engine memory usage
export NXF_OPTS='-Xms1g -Xmx4g'

# Define environment variables for Apptainer
export APPTAINERENV_TMPDIR=$TMPDIR
export APPTAINERENV_NXF_TASK_WORKDIR=$PWD
export APPTAINERENV_NXF_DEBUG=1

# Run nf-core/rnaseq pipeline
nextflow run nf-core/rnasplice \
    -profile test,singularity \
    --outdir results
    
