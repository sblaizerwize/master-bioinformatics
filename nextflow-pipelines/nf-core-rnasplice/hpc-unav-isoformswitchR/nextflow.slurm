#!/bin/bash
#SBATCH --job-name=rnasplice-hpc
#SBATCH --output=rnasplice-hpc-%j.out
#SBATCH --error=rnasplice-hpc-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --time=18:00:00        # time limit
#SBATCH --partition=short      # or your HPC’s partition name

# Load Nexflow module 
module purge
module load Nextflow/25.04.6

# Limit Nextflow engine memory usage
export NXF_OPTS='-Xms1g -Xmx4g'

# Define environment variables for Apptainer
export APPTAINERENV_TMPDIR=$TMPDIR
export APPTAINERENV_NXF_TASK_WORKDIR=$PWD
export APPTAINERENV_NXF_DEBUG=1

# Run nf-core/rnaseq pipeline
nextflow run nf-core/rnasplice -r dev \
    -profile unav \
    -params-file params_rnaseq.yaml \
    -c nextflow.config \ 
