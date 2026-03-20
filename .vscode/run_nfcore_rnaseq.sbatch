#!/bin/bash
#SBATCH --job-name=nfcore_rnaseq
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=24:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

module purge
module load cesga/2025
module load nextflow/25.04.6
module load apptainer/1.4.2

nextflow run nf-core/rnaseq -r 3.22.2 \
  -profile test,apptainer \
  -c /home/otras/cim/mmt/finisterrea.config \
  -w $LUSTRE/nf-work \
  --outdir /mnt/netapp2/Store_uni/home/otras/cim/mmt/results
