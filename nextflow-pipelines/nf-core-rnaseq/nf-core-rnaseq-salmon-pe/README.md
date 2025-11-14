# Using nf-core/rnaseq pipeline on 6 samples to test kallisto pseudoaligner 

This pipeline performs an RNA-seq analysis using nf-core/rnaseq on data provided by the the [Nextflow for RNAseq training course](https://training.nextflow.io/latest/nf4_science/rnaseq/) using an HPC cluster. 

Here is a summary of the pipeline. 

```

 N E X T F L O W   ~  version 25.04.6

Launching `https://github.com/nf-core/rnaseq` [intergalactic_gautier] DSL2 - revision: 9738a2df42 [master]


------------------------------------------------------
                                        ,--./,-.
        ___     __   __   __   ___     /,-._.--~'
  |\ | |__  __ /  ` /  \ |__) |__         }  {
  | \| |       \__, \__/ |  \ |___     \`-._,-`-,
                                        `._,._,'
  nf-core/rnaseq 3.21.0
------------------------------------------------------
Input/output options
  input              : samplesheet.csv
  outdir             : results
  email              : samarquez@external.unav.es
  multiqc_title      : crc-rna-seq-kallisto

Reference genome options
  fasta              : data/genomes/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
  gtf                : data/genomes/GRCh38/Homo_sapiens.GRCh38.115.gtf.gz
  igenomes_ignore    : true

UMI options
  umi_discard_read   : 0

Alignment options
  pseudo_aligner     : kallisto

Optional outputs
  save_reference     : true

Process skipping options
  skip_alignment     : true

Generic options
  trace_report_suffix: 2025-10-16_08-00-41

Core Nextflow options
  revision           : master
  runName            : intergalactic_gautier
  containerEngine    : singularity
  launchDir          : /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe
  workDir            : /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/work
  projectDir         : /home/samarquez/.nextflow/assets/nf-core/rnaseq
  userName           : samarquez
  profile            : unavcluster
  configFiles        : /home/samarquez/.nextflow/assets/nf-core/rnaseq/nextflow.config, /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/hpc.config

!! Only displaying parameters that differ from the pipeline defaults !!
------------------------------------------------------
* The pipeline
    https://doi.org/10.5281/zenodo.1400710

* The nf-core framework
    https://doi.org/10.1038/s41587-020-0439-x

* Software dependencies
    https://github.com/nf-core/rnaseq/blob/master/CITATIONS.md

WARN: The following invalid input values have been detected:

* --skip_fastq_lint: true


WARN: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  '--skip_alignment' parameter has been provided.
  Skipping alignment, genome-based quantification and all downstream QC processes.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 5 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 12 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 19 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 25 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 31 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF | 0 of 1
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (1)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (2)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[e9/2d3791] NFC…ESS:FQ_LINT (encsr000coq1) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (3)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b1/f8e674] NFC…ESS:FQ_LINT (encsr000cor1) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (4)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[35/cca8a9] NFC…ESS:FQ_LINT (encsr000coq2) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (6)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[78/a86555] NFC…ESS:FQ_LINT (encsr000cpo2) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (7)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (8)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[53/f5ef4a] NFC…ESS:FQ_LINT (encsr000cpo1) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (8)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[53/f5ef4a] NFC…ESS:FQ_LINT (encsr000cpo1) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (8)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[53/f5ef4a] NFC…ESS:FQ_LINT (encsr000cpo1) | 0 of 6
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (8)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC | 0 of 6
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (10)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 0 of 6
[f5/f76944] NFC…:TRIMGALORE (encsr000cpo2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (12)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[61/b048cb] NFC…LORE:FASTQC (encsr000cor2) | 0 of 6
[f5/f76944] NFC…:TRIMGALORE (encsr000cpo2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (13)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[88/5b6f31] NFC…LORE:FASTQC (encsr000cpo2) | 0 of 6
[f5/f76944] NFC…:TRIMGALORE (encsr000cpo2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (15)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[af/923d5b] NFC…LORE:FASTQC (encsr000coq1) | 0 of 6
[34/020c03] NFC…:TRIMGALORE (encsr000coq1) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (16)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[af/923d5b] NFC…LORE:FASTQC (encsr000coq1) | 0 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (19)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 0 of 6
[dd/85ef20] NFC…:TRIMGALORE (encsr000cpo1) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (20)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 0 of 6
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (20)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 0 of 6
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (20)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 0 of 1
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (20)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (21)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[1e/7ab3e0] NFC…ER_TRIMMING (encsr000cpo1) | 0 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (22)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[a8/f09e2c] NFC…ER_TRIMMING (encsr000cpo2) | 0 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (23)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[15/c7ae73] NFC…ER_TRIMMING (encsr000cor2) | 0 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (24)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[93/88c0a2] NFC…ER_TRIMMING (encsr000cor1) | 0 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (25)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[6d/f4514a] NFC…ER_TRIMMING (encsr000coq1) | 0 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (25)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[98/583fe1] NFC…LORE:FASTQC (encsr000cpo1) | 5 of 6
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[6d/f4514a] NFC…ER_TRIMMING (encsr000coq1) | 0 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (25)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[32/18be38] NFC…:TRIMGALORE (encsr000cor1) | 5 of 6
[93/88c0a2] NFC…ER_TRIMMING (encsr000cor1) | 5 of 5
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (25)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[93/88c0a2] NFC…ER_TRIMMING (encsr000cor1) | 5 of 6
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (26)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 5 of 6
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…


executor >  slurm (26)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (26)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (27)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (27)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (27)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES | 0 of 1
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (28)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (28)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (28)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://depot.galaxyproject.org/singularity/samtools:1.21--h50ea8bc_0 [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/depot.galaxyproject.org-singularity-samtools-1.21--h50ea8bc_0.img]

executor >  slurm (28)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED | 0 of 1
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/23/23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-23-23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59-data.img]


executor >  slurm (29)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/23/23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-23-23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59-data.img]


executor >  slurm (29)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/23/23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-23-23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59-data.img]

executor >  slurm (30)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[27/f38086] NFC…8.dna.primary_assembly.fa) | 0 of 1
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/23/23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-23-23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59-data.img]

executor >  slurm (30)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[27/f38086] NFC…8.dna.primary_assembly.fa) | 0 of 1
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/23/23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-23-23651ffd6a171ef3ba867cb97ef615f6dd6be39158df9466fe92b5e844cd7d59-data.img]

executor >  slurm (30)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[27/f38086] NFC…8.dna.primary_assembly.fa) | 0 of 1
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…


executor >  slurm (30)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[-        ] NFC…PARE_GENOME:KALLISTO_INDEX | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…


executor >  slurm (31)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…

executor >  slurm (31)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 0 of 1
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…

executor >  slurm (31)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
Plus 32 more processes waiting for tasks…

executor >  slurm (31)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…O_ALIGNMENT:KALLISTO_QUANT | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (32)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[db/4ce35f] NFC…LISTO_QUANT (encsr000cpo1) | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (33)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[8a/1a5e7d] NFC…LISTO_QUANT (encsr000cor2) | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (34)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[63/700c32] NFC…LISTO_QUANT (encsr000cor1) | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (36)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[de/70b386] NFC…LISTO_QUANT (encsr000cpo2) | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (37)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (37)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 0 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (37)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[63/700c32] NFC…LISTO_QUANT (encsr000cor1) | 5 of 6
Plus 31 more processes waiting for tasks…

executor >  slurm (37)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
Plus 31 more processes waiting for tasks…

executor >  slurm (37)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…O_ALIGNMENT:CUSTOM_TX2GENE | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (38)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (38)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (38)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[-        ] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 0 of 1
Plus 29 more processes waiting for tasks…

executor >  slurm (39)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 0 of 1
Plus 29 more processes waiting for tasks…

executor >  slurm (39)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 0 of 1
Plus 29 more processes waiting for tasks…

executor >  slurm (39)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[-        ] NFC…_ALIGNMENT:SE_GENE_UNIFIED | 0 of 1
[-        ] NFC…MENT:SE_TRANSCRIPT_UNIFIED | 0 of 1
[-        ] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 26 more processes waiting for tasks…

executor >  slurm (40)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[-        ] NFC…MENT:SE_TRANSCRIPT_UNIFIED | 0 of 1
[-        ] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 26 more processes waiting for tasks…

executor >  slurm (41)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[-        ] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 26 more processes waiting for tasks…

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 26 more processes waiting for tasks…

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 26 more processes waiting for tasks…

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 26 more processes waiting for tasks…

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 26 more processes waiting for tasks…

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 26 more processes waiting for tasks…

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 26 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/ef/eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-ef-eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329-data.img]

executor >  slurm (42)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[-        ] NFCORE_RNASEQ:RNASEQ:MULTIQC   | 0 of 1
Plus 25 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/ef/eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-ef-eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329-data.img]

executor >  slurm (43)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[c2/a51d1f] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 0 of 1
Plus 25 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/ef/eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-ef-eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329-data.img]

executor >  slurm (43)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[c2/a51d1f] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 0 of 1
Plus 25 more processes waiting for tasks…
Pulling Singularity image https://community-cr-prod.seqera.io/docker/registry/v2/blobs/sha256/ef/eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329/data [cache /beegfs/home/samarquez/tfm-rnaseq/master-bioinformatics/nf-core-rnaseq-pipeline-pe/singularity_images/community-cr-prod.seqera.io-docker-registry-v2-blobs-sha256-ef-eff0eafe78d5f3b65a6639265a16b89fdca88d06d18894f90fcdb50142004329-data.img]

executor >  slurm (43)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[c2/a51d1f] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 1 of 1 ✔
Plus 25 more processes waiting for tasks…


executor >  slurm (43)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[c2/a51d1f] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 1 of 1 ✔
Plus 25 more processes waiting for tasks…
-[nf-core/rnaseq] Sent summary e-mail to samarquez@external.unav.es (sendmail)-
-[nf-core/rnaseq] Pipeline completed successfully -

executor >  slurm (43)
[2e/3c8bd2] NFC…sapiens.GRCh38.115.gtf.gz) | 1 of 1 ✔
[b3/d35e8a] NFC…na.primary_assembly.fa.gz) | 1 of 1 ✔
[b1/f0c9f3] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[72/dcb27b] NFC…s.GRCh38.115.filtered.gtf) | 1 of 1 ✔
[27/f38086] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[eb/8fd0a1] NFC…8.dna.primary_assembly.fa) | 1 of 1 ✔
[b0/a4b7c3] NFC…EX (genome.transcripts.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/a4f944] NFC…ESS:FQ_LINT (encsr000cor2) | 6 of 6 ✔
[a1/b759b2] NFC…LORE:FASTQC (encsr000coq2) | 6 of 6 ✔
[6e/98c927] NFC…:TRIMGALORE (encsr000coq2) | 6 of 6 ✔
[8b/283e31] NFC…ER_TRIMMING (encsr000coq2) | 6 of 6 ✔
[-        ] NFC…PLE_FQ_SALMON:SALMON_INDEX -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[07/757d21] NFC…LISTO_QUANT (encsr000coq2) | 6 of 6 ✔
[8b/400608] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b3/414e7d] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[f5/d5421d] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[7f/89feed] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[1b/2c6e54] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[c2/a51d1f] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 1 of 1 ✔
Plus 25 more processes waiting for tasks…
-[nf-core/rnaseq] Sent summary e-mail to samarquez@external.unav.es (sendmail)-
-[nf-core/rnaseq] Pipeline completed successfully -
Completed at: 16-Oct-2025 08:29:47
Duration    : 29m 1s
CPU hours   : 3.0
Succeeded   : 43

```