#!/bin/bash
#SBATCH --job-name=rnaseq-salmon-hpc
#SBATCH --output=rnaseq-salmon-hpc-%j.out
#SBATCH --error=rnaseq-salmon-hpc-%j.err
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --time=12:00:00        # time limit
#SBATCH --partition=short      # or your HPC’s partition name

# Load Nexflow module 
module purge
module load cesga/2025
module load nextflow/25.04.6
module load apptainer/1.4.2

# Limit Nextflow engine memory usage
export NXF_OPTS='-Xms1g -Xmx4g'

# Define environment variables for Apptainer
export APPTAINERENV_TMPDIR=$TMPDIR
export APPTAINERENV_NXF_TASK_WORKDIR=$PWD
export APPTAINERENV_NXF_DEBUG=1

# Run nf-core/rnaseq pipeline
nextflow run nf-core/rnaseq -r 3.22.2 \
    -profile cesga \
    -params-file params_rnaseq.yaml \
    -c hpc.config \

#-resume