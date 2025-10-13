# Running the rnaseq-pipeline-hpc-diy-transcriptomics pipeline  

This pipeline performs an RNA-seq analysis on skin data provided by the [DIY Transcriptomics course](https://diytranscriptomics.com/) (approximately 30 GB), which includes 10 patient samples. It uses resources from an HPC cluster to complete the RNAseq analysis. 

To execute it:
- Clone the repository
- Go to the rnaseq-pipeline-hpc-diy-transcriptomics folder  
`cd ~./rnaseq-pipeline-hpc-diy-transcriptomics`
- Send a batch job  
`sbatch nextflow.slurm` 