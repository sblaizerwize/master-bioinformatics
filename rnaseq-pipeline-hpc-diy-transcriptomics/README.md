# Running the rnaseq-aws-diy-transcriptomics pipeline  

This pipeline performs an RNA-seq analysis on skin data provided by the [DIY Transcriptomics course](https://diytranscriptomics.com/) (approximately 30 GB), which includes 10 patient samples. The goal is to provide guidelines on how to set up AWS infrastructure tailored to the dataset, in order to better select EC2 instance types, distribute the Nextflow workload across different compute environments using queues, and strike a balance between performance and cost. 

Here is a summary of the pipeline. 

```
nextflow run . -profile batch --reads 's3://diy-transcriptomics-rna-seq-data/data/single-end.csv' --transcriptome 's3://diy-transcriptomics-rna-seq-data/data/genome_index.tar.gz' --outdir 's3://diy-transcriptomics-rna-seq-data/results' -with-report report-config.html -with-timeline timeline.html -with-trace trace.txt

 N E X T F L O W   ~  version 25.04.6

Launching `./main.nf` [fabulous_spence] DSL2 - revision: 58bf98848c

        R N A S E Q - N F   P I P E L I N E
        ===================================
        transcriptome: s3://diy-transcriptomics-rna-seq-data/data/genome_index.tar.gz
        reads        : s3://diy-transcriptomics-rna-seq-data/data/single-end.csv
        outdir       : s3://diy-transcriptomics-rna-seq-data/results

executor >  awsbatch (31)
[99/2a9bf1] FASTQC (10)       | 10 of 10 ✔
[e5/e07297] TRIM_GALORE (10)  | 10 of 10 ✔
[a9/2a1dc8] HISAT2_ALIGN (10) | 10 of 10 ✔
[80/dec796] MULTIQC           | 1 of 1 ✔
Completed at: 25-Jul-2025 21:08:43
Duration    : 57m 10s
CPU hours   : 33.8
Succeeded   : 31
```