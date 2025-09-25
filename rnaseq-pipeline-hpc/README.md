# Running the nextflow-for-rnaseq-aws pipeline

This Nextflow pipeline replicates the content of the [Nextflow for RNAseq training course](https://training.nextflow.io/latest/nf4_science/rnaseq/) but instead of running it locally, it goes further because it uses AWS cloud resources to complete the RNAseq analysis. 

Here is a summary of the pipeline. 

```
nextflow run . -profile batch --reads 's3://nextflow-for-rnaseq/data/single-end.csv' --transcriptome 's3://nextflow-for-rnaseq/data/aligned/genome_index.tar.gz' --outdir 's3://nextflow-for-rnaseq/results'

 N E X T F L O W   ~  version 25.04.6

Launching `./main.nf` [stoic_kare] DSL2 - revision: 58bf98848c

        R N A S E Q - N F   P I P E L I N E
        ===================================
        transcriptome: s3://nextflow-for-rnaseq/data/aligned/genome_index.tar.gz
        reads        : s3://nextflow-for-rnaseq/data/single-end.csv
        outdir       : s3://nextflow-for-rnaseq/results

executor >  awsbatch (19)
[f4/558877] FASTQC (4)       [100%] 6 of 6 ✔
[11/11a646] TRIM_GALORE (5)  [100%] 6 of 6 ✔
[30/a4f38c] HISAT2_ALIGN (6) [100%] 6 of 6 ✔
[f8/8513cf] MULTIQC          [100%] 1 of 1 ✔
Completed at: 18-Jul-2025 12:25:54
Duration    : 3m 31s
CPU hours   : 0.1
Succeeded   : 19
```