#!/bin/bash
#SBATCH --job-name=compress-job
#SBATCH --error=compress-job-%j.err
#SBATCH --output=compress-job-%j.out
#SBATCH --cpus-per-task=8      # number of CPUs
#SBATCH --mem=16G              # memory
#SBATCH --partition=short      # or your HPC’s partition name

#module load zstd/1.5.5-GCCcore-13.2.0
#tar -cvf - genome_ensembl/ | zstd -T${SLURM_CPUS_PER_TASK} --progress -o salmon_index_nfcore_ensembl.tar.zst

module load gzip/1.13-GCCcore-13.2.0

# To compress folders
#tar -cvf - my_folder/ | pigz -p ${SLURM_CPUS_PER_TASK} > my_folder.tar.gz

# To compress files
pigz -p ${SLURM_CPUS_PER_TASK} -c my_file.gtf > my_file.gtf.gz
