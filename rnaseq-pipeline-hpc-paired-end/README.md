# Running the rnaseq-pipeline-hpc-paired-end pipeline

This Nextflow pipeline replicates the content of the [Nextflow for RNAseq training course](https://training.nextflow.io/latest/nf4_science/rnaseq/) but instead of running it locally, it uses resources from an HPC cluster to complete the RNAseq analysis. 

To execute it:
- Clone the repository
- Go to the rnaseq-pipeline-hpc-paired-end folder  
`cd ~./rnaseq-pipeline-hpc-paired-end`
- Send a batch job  
`sbatch nextflow.slurm` 