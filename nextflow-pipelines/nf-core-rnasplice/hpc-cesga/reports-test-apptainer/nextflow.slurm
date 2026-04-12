#!/bin/bash
#SBATCH --job-name=rnasplice-hpc
#SBATCH --output=rnasplice-hpc-%j.out
#SBATCH --error=rnasplice-hpc-%j.err
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

# Set cache location to scratch
export APPTAINER_CACHEDIR=/mnt/lustre/scratch/nlsas/home/otras/cim/smv/singularity_images
export NXF_APPTAINER_CACHEDIR=$APPTAINER_CACHEDIR

# Run nf-core/rnaseq pipeline
nextflow run nf-core/rnasplice -r 1.0.4 \
    -profile test,apptainer \
    -c hpc.config \
    -w $LUSTRE/nf-work \
    --outdir /mnt/netapp2/Store_uni/home/otras/cim/smv/rnasplice-results \
    -resume
