# Using nf-core/rnaseq pipeline on 86 samples 

This pipeline performs an RNA-seq analysis using nf-core/rnaseq on data provided by the [Identification of differentially expressed genes and splicing events in early-onset colorectal cancer](https://www.frontiersin.org/journals/oncology/articles/10.3389/fonc.2024.1365762/full) article. 

We thank the [EuroCC Spain Testbed project](https://eurocc-spain.res.es/convocatoria-eurocc-spain-testbed/)for providing us with resources from the CESGA cluster to accomplish this analysis. 

Here is a summary of the pipeline. 

```

 N E X T F L O W   ~  version 25.04.6

Launching `https://github.com/nf-core/rnaseq` [astonishing_stonebraker] DSL2 - revision: 3816d48abd [3.22.2]


------------------------------------------------------
                                        ,--./,-.
        ___     __   __   __   ___     /,-._.--~'
  |\ | |__  __ /  ` /  \ |__) |__         }  {
  | \| |       \__, \__/ |  \ |___     \`-._,-`-,
                                        `._,._,'
  nf-core/rnaseq 3.22.2
------------------------------------------------------

Input/output options
  input              : samplesheet.csv
  outdir             : /mnt/netapp2/Store_uni/home/otras/cim/smv/crc86-rnaseq-results
  multiqc_title      : crc86-rnaseq-results

Reference genome options
  fasta              : /mnt/netapp2/Store_uni/home/otras/cim/smv/genomes/GRCh38.primary_assembly.genome.fa.gz
  gtf                : /mnt/netapp2/Store_uni/home/otras/cim/smv/genomes/gencode.v49.primary_assembly.annotation.gtf.gz
  salmon_index       : /mnt/netapp2/Store_uni/home/otras/cim/smv/genomes/index/salmon
  gencode            : true
  igenomes_ignore    : true

UMI options
  umi_discard_read   : 0

Alignment options
  pseudo_aligner     : salmon

Process skipping options
  skip_alignment     : true

Generic options
  trace_report_suffix: 2026-03-19_22-34-46

Core Nextflow options
  revision           : 3.22.2
  runName            : astonishing_stonebraker
  containerEngine    : singularity
  launchDir          : /mnt/netapp2/Home_FT2/home/otras/cim/smv/master-bioinformatics/nextflow-pipelines/nf-core-rnaseq/nf-core-rnaseq-salmon-pe-cesga
  workDir            : /mnt/lustre/scratch/nlsas/home/otras/cim/smv/work
  projectDir         : /home/otras/cim/smv/.nextflow/assets/nf-core/rnaseq
  userName           : otcimsmv
  profile            : cesga
  configFiles        : /home/otras/cim/smv/.nextflow/assets/nf-core/rnaseq/nextflow.config, /mnt/netapp2/Home_FT2/home/otras/cim/smv/master-bioinformatics/nextflow-pipelines/nf-core-rnaseq/nf-core-rnaseq-salmon-pe-cesga/hpc.config

!! Only displaying parameters that differ from the pipeline defaults !!
------------------------------------------------------

* The pipeline
    https://doi.org/10.5281/zenodo.1400710

* The nf-core framework
    https://doi.org/10.1038/s41587-020-0439-x

* Software dependencies
    https://github.com/nf-core/rnaseq/blob/master/CITATIONS.md

WARN: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  '--skip_alignment' parameter has been provided.
  Skipping alignment, genome-based quantification and all downstream QC processes.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 3 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 15 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 24 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 30 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF -
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA -
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT -
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

[-        ] NFC…:PREPARE_GENOME:GUNZIP_GTF | 0 of 1
[-        ] NFC…REPARE_GENOME:GUNZIP_FASTA | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[-        ] NFC…ER_SETSTRANDEDNESS:FQ_LINT | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (10)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 0 of 1
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[0e/9714e8] NFC…NESS:FQ_LINT (SRR17866821) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (20)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 0 of 1
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[eb/135dda] NFC…NESS:FQ_LINT (SRR17866835) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (22)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 0 of 1
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[75/322243] NFC…NESS:FQ_LINT (SRR17866834) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…
WARN: The operator `first` is useless when applied to a value channel which returns a single value by definition

executor >  slurm (22)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 0 of 1
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[75/322243] NFC…NESS:FQ_LINT (SRR17866834) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…


executor >  slurm (22)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 0 of 1
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[75/322243] NFC…NESS:FQ_LINT (SRR17866834) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…


executor >  slurm (22)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 0 of 1
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER -
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES -
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[75/322243] NFC…NESS:FQ_LINT (SRR17866834) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (22)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[-        ] NFC…:PREPARE_GENOME:GTF_FILTER | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[-        ] NFC…ENOME:CUSTOM_GETCHROMSIZES | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[75/322243] NFC…NESS:FQ_LINT (SRR17866834) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (24)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[75/322243] NFC…NESS:FQ_LINT (SRR17866834) | 0 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC -
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE -
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (25)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[c6/050ba8] NFC…NESS:FQ_LINT (SRR17866837) | 2 of 86
[-        ] NFC…UMITOOLS_TRIMGALORE:FASTQC | 0 of 2
[-        ] NFC…OOLS_TRIMGALORE:TRIMGALORE | 0 of 2
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (30)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[53/91c426] NFC…NESS:FQ_LINT (SRR17866838) | 2 of 86
[04/db9c6a] NFC…ALORE:FASTQC (SRR17866818) | 0 of 2
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 0 of 2
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (33)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ed/1c19e1] NFC…NESS:FQ_LINT (SRR17866840) | 3 of 86
[0b/bf1020] NFC…ALORE:FASTQC (SRR17866817) | 0 of 3
[03/b9651a] NFC…E:TRIMGALORE (SRR17866817) | 0 of 3
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (37)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[28/6a195b] NFC…NESS:FQ_LINT (SRR17866846) | 5 of 86
[3e/a4c1c3] NFC…ALORE:FASTQC (SRR17866820) | 0 of 5
[d8/de40b7] NFC…E:TRIMGALORE (SRR17866820) | 0 of 5
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (39)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[28/6a195b] NFC…NESS:FQ_LINT (SRR17866846) | 5 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 0 of 5
[fd/3ce7dc] NFC…E:TRIMGALORE (SRR17866821) | 0 of 5
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (42)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[95/c378c3] NFC…NESS:FQ_LINT (SRR17866847) | 6 of 86
[67/68feb4] NFC…ALORE:FASTQC (SRR17866827) | 0 of 6
[3b/623015] NFC…E:TRIMGALORE (SRR17866827) | 0 of 6
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (49)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ad/9b350d] NFC…NESS:FQ_LINT (SRR17866851) | 11 of 86
[ba/82c0da] NFC…ALORE:FASTQC (SRR17866825) | 0 of 11
[79/6f8357] NFC…E:TRIMGALORE (SRR17866819) | 0 of 11
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (57)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ad/9b350d] NFC…NESS:FQ_LINT (SRR17866851) | 11 of 86
[6b/4aa5c6] NFC…ALORE:FASTQC (SRR17866832) | 0 of 11
[8b/e669c8] NFC…E:TRIMGALORE (SRR17866832) | 0 of 11
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (57)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[46/41d90c] NFC…NESS:FQ_LINT (SRR17866831) | 13 of 86
[6b/4aa5c6] NFC…ALORE:FASTQC (SRR17866832) | 0 of 13
[8b/e669c8] NFC…E:TRIMGALORE (SRR17866832) | 0 of 13
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (63)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[00/da5e06] NFC…NESS:FQ_LINT (SRR17866850) | 13 of 86
[29/3d4c1c] NFC…ALORE:FASTQC (SRR17866831) | 0 of 13
[e2/f4c54a] NFC…E:TRIMGALORE (SRR17866823) | 0 of 13
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (63)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[df/e9b917] NFC…NESS:FQ_LINT (SRR17866830) | 14 of 86
[29/3d4c1c] NFC…ALORE:FASTQC (SRR17866831) | 0 of 14
[e2/f4c54a] NFC…E:TRIMGALORE (SRR17866823) | 0 of 14
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (66)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b7/c8815e] NFC…NESS:FQ_LINT (SRR17866839) | 14 of 86
[db/792bee] NFC…ALORE:FASTQC (SRR17866830) | 0 of 14
[66/b1f682] NFC…E:TRIMGALORE (SRR17866830) | 0 of 14
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (66)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[aa/c769a8] NFC…NESS:FQ_LINT (SRR17866824) | 17 of 86
[db/792bee] NFC…ALORE:FASTQC (SRR17866830) | 0 of 17
[66/b1f682] NFC…E:TRIMGALORE (SRR17866830) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (73)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[06/b23158] NFC…NESS:FQ_LINT (SRR17866853) | 17 of 86
[04/f4367b] NFC…ALORE:FASTQC (SRR17866828) | 0 of 17
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (75)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 0 of 1
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED -
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA -
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[06/b23158] NFC…NESS:FQ_LINT (SRR17866853) | 17 of 86
[4c/585d87] NFC…ALORE:FASTQC (SRR17866833) | 0 of 17
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (75)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…SEQ:PREPARE_GENOME:GTF2BED | 0 of 1
[-        ] NFC…OME:MAKE_TRANSCRIPTS_FASTA | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[06/b23158] NFC…NESS:FQ_LINT (SRR17866853) | 17 of 86
[4c/585d87] NFC…ALORE:FASTQC (SRR17866833) | 0 of 17
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (77)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[06/b23158] NFC…NESS:FQ_LINT (SRR17866853) | 17 of 86
[4c/585d87] NFC…ALORE:FASTQC (SRR17866833) | 0 of 17
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (77)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[06/b23158] NFC…NESS:FQ_LINT (SRR17866853) | 17 of 86
[4c/585d87] NFC…ALORE:FASTQC (SRR17866833) | 0 of 17
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (77)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[c5/5b92dd] NFC…NESS:FQ_LINT (SRR17866836) | 18 of 86
[4c/585d87] NFC…ALORE:FASTQC (SRR17866833) | 0 of 17
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 0 of 17
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (83)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[33/9f2f4e] NFC…NESS:FQ_LINT (SRR27320655) | 19 of 86
[f0/f3664f] NFC…ALORE:FASTQC (SRR17866842) | 0 of 19
[42/79bbc9] NFC…E:TRIMGALORE (SRR17866836) | 0 of 19
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (84)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[42/8f66b9] NFC…NESS:FQ_LINT (SRR27320658) | 22 of 86
[f0/f3664f] NFC…ALORE:FASTQC (SRR17866842) | 0 of 22
[42/79bbc9] NFC…E:TRIMGALORE (SRR17866836) | 0 of 22
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (88)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[37/23d5ad] NFC…NESS:FQ_LINT (SRR27320657) | 22 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 22
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 22
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (89)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[76/1f1830] NFC…NESS:FQ_LINT (SRR17866856) | 23 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 23
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 23
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (89)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[28/6a195b] NFC…NESS:FQ_LINT (SRR17866846) | 24 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 24
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 24
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (90)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[02/043c8c] NFC…NESS:FQ_LINT (SRR17866848) | 25 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 25
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 25
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (91)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[18/7a51ae] NFC…NESS:FQ_LINT (SRR27320660) | 25 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 25
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 25
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (91)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ed/1c19e1] NFC…NESS:FQ_LINT (SRR17866840) | 27 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 27
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 27
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (93)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ba/32a354] NFC…NESS:FQ_LINT (SRR17866857) | 27 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 27
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 27
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (93)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[8e/bbfb17] NFC…NESS:FQ_LINT (SRR17866849) | 28 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 28
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 28
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (94)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[f4/262358] NFC…NESS:FQ_LINT (SRR17866855) | 28 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 28
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 28
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (94)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[53/91c426] NFC…NESS:FQ_LINT (SRR17866838) | 29 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 29
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 29
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (95)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[fd/20599f] NFC…NESS:FQ_LINT (SRR27320659) | 29 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 29
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 29
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (96)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 0 of 1
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[2e/a994fa] NFC…NESS:FQ_LINT (SRR27320664) | 30 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 30
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 30
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (96)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[2e/a994fa] NFC…NESS:FQ_LINT (SRR27320664) | 30 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 30
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 30
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (98)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[c2/e14130] NFC…NESS:FQ_LINT (SRR27320665) | 32 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 32
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 32
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (99)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[62/8a5ab7] NFC…NESS:FQ_LINT (SRR27320669) | 33 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 33
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 33
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (99)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[00/da5e06] NFC…NESS:FQ_LINT (SRR17866850) | 34 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 34
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 34
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (100)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[16/2b8c8a] NFC…NESS:FQ_LINT (SRR27320666) | 34 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 34
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 34
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (100)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[16/2b8c8a] NFC…NESS:FQ_LINT (SRR27320666) | 34 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 34
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 34
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (100)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[05/3b66c3] NFC…NESS:FQ_LINT (SRR17866844) | 35 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 35
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 35
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (101)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[2c/126606] NFC…NESS:FQ_LINT (SRR27320668) | 35 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 35
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 35
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (101)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ad/9b350d] NFC…NESS:FQ_LINT (SRR17866851) | 36 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 36
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 36
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (102)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[38/e46080] NFC…NESS:FQ_LINT (SRR27320670) | 36 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 36
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 36
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (103)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[1f/17588a] NFC…NESS:FQ_LINT (SRR27320667) | 37 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 37
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 37
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (105)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[29/42054b] NFC…NESS:FQ_LINT (SRR27320671) | 39 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 39
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 39
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (107)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[e8/5eb178] NFC…NESS:FQ_LINT (SRR27320672) | 41 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 41
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 41
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (109)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[7f/b4ab29] NFC…NESS:FQ_LINT (SRR27320674) | 43 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 43
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 43
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (110)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[24/b61f5a] NFC…NESS:FQ_LINT (SRR27320678) | 44 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 44
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 44
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (110)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[c2/e14130] NFC…NESS:FQ_LINT (SRR27320665) | 49 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 49
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 49
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (115)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[47/d8214f] NFC…NESS:FQ_LINT (SRR27320684) | 49 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 49
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 49
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (116)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[f3/d58ca0] NFC…NESS:FQ_LINT (SRR27320685) | 50 of 86
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 0 of 50
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 50
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (116)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[f3/d58ca0] NFC…NESS:FQ_LINT (SRR27320685) | 50 of 86
[a0/813b0a] NFC…ALORE:FASTQC (SRR17866822) | 2 of 50
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 50
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (118)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[f3/d58ca0] NFC…NESS:FQ_LINT (SRR27320685) | 50 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 50
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 50
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (118)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[5e/c61848] NFC…NESS:FQ_LINT (SRR27320662) | 51 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 51
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 51
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (119)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[e0/2d8738] NFC…NESS:FQ_LINT (SRR27320681) | 51 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 51
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 51
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (120)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ff/33c2a0] NFC…NESS:FQ_LINT (SRR27320683) | 52 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 52
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 52
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (121)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ad/d09c7c] NFC…NESS:FQ_LINT (SRR27320686) | 53 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 53
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 53
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (122)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[67/071c0f] NFC…NESS:FQ_LINT (SRR27320687) | 54 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 54
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 54
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (124)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[58/b3458e] NFC…NESS:FQ_LINT (SRR27320691) | 56 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 56
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 56
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (125)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[56/46275b] NFC…NESS:FQ_LINT (SRR27320689) | 57 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 57
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 57
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (127)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[24/ac1cc2] NFC…NESS:FQ_LINT (SRR27320694) | 59 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 59
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 59
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (127)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[7f/b4ab29] NFC…NESS:FQ_LINT (SRR27320674) | 60 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 60
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 60
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (128)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[27/400b5e] NFC…NESS:FQ_LINT (SRR27320692) | 60 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 60
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 60
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (128)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[27/400b5e] NFC…NESS:FQ_LINT (SRR27320692) | 60 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 60
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 60
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (128)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[24/b61f5a] NFC…NESS:FQ_LINT (SRR27320678) | 62 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 62
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 62
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (130)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[92/face85] NFC…NESS:FQ_LINT (SRR27320695) | 62 of 86
[8a/f5d86c] NFC…ALORE:FASTQC (SRR17866847) | 2 of 62
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 62
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (130)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[92/face85] NFC…NESS:FQ_LINT (SRR27320695) | 62 of 86
[e7/b02821] NFC…ALORE:FASTQC (SRR17866819) | 4 of 62
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 62
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (132)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[92/face85] NFC…NESS:FQ_LINT (SRR27320695) | 62 of 86
[7c/ca1763] NFC…ALORE:FASTQC (SRR17866846) | 4 of 62
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 62
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (133)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[58/674b1e] NFC…NESS:FQ_LINT (SRR27320663) | 63 of 86
[89/556104] NFC…ALORE:FASTQC (SRR17866848) | 5 of 63
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 63
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (134)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 63 of 86
[89/556104] NFC…ALORE:FASTQC (SRR17866848) | 5 of 63
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 63
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (135)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 63 of 86
[28/986b08] NFC…ALORE:FASTQC (SRR17866834) | 8 of 63
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 63
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (137)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 63 of 86
[ac/4793e3] NFC…ALORE:FASTQC (SRR17866849) | 8 of 63
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 63
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (138)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 63 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 63
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 63
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (139)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[d8/65b00e] NFC…NESS:FQ_LINT (SRR27320693) | 64 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 64
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 64
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (140)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[40/037b85] NFC…NESS:FQ_LINT (SRR27320696) | 65 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 65
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 65
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[2f/f9c26c] NFC…NESS:FQ_LINT (SRR27320698) | 66 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 66
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 66
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[ad/d09c7c] NFC…NESS:FQ_LINT (SRR27320686) | 67 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 67
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 67
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[24/ac1cc2] NFC…NESS:FQ_LINT (SRR27320694) | 70 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 70
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 70
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[58/b3458e] NFC…NESS:FQ_LINT (SRR27320691) | 73 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 73
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 73
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[56/46275b] NFC…NESS:FQ_LINT (SRR27320689) | 74 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 74
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 74
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[f3/d58ca0] NFC…NESS:FQ_LINT (SRR27320685) | 76 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 76
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 76
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[30/274c25] NFC…NESS:FQ_LINT (SRR27320682) | 77 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 77
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 77
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[67/071c0f] NFC…NESS:FQ_LINT (SRR27320687) | 79 of 86
[f1/2cbb6e] NFC…ALORE:FASTQC (SRR17866821) | 9 of 79
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 79
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (141)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[67/071c0f] NFC…NESS:FQ_LINT (SRR27320687) | 79 of 86
[1d/b07b6c] NFC…ALORE:FASTQC (SRR17866826) | 10 of 79
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 79
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (142)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[67/071c0f] NFC…NESS:FQ_LINT (SRR27320687) | 79 of 86
[78/96e51c] NFC…ALORE:FASTQC (SRR17866835) | 10 of 79
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 79
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (142)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[67/071c0f] NFC…NESS:FQ_LINT (SRR27320687) | 79 of 86
[6b/4aa5c6] NFC…ALORE:FASTQC (SRR17866832) | 11 of 79
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 79
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (143)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[67/071c0f] NFC…NESS:FQ_LINT (SRR27320687) | 79 of 86
[d9/0efcfb] NFC…ALORE:FASTQC (SRR17866839) | 11 of 79
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 79
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (143)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[92/face85] NFC…NESS:FQ_LINT (SRR27320695) | 82 of 86
[d9/0efcfb] NFC…ALORE:FASTQC (SRR17866839) | 11 of 82
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 82
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (143)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[40/037b85] NFC…NESS:FQ_LINT (SRR27320696) | 83 of 86
[d9/0efcfb] NFC…ALORE:FASTQC (SRR17866839) | 11 of 83
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 83
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (144)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[40/037b85] NFC…NESS:FQ_LINT (SRR27320696) | 83 of 86
[a0/229596] NFC…ALORE:FASTQC (SRR17866852) | 12 of 83
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 83
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (144)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[d8/65b00e] NFC…NESS:FQ_LINT (SRR27320693) | 84 of 86
[a0/229596] NFC…ALORE:FASTQC (SRR17866852) | 12 of 84
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 84
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (144)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[19/f0e392] NFC…NESS:FQ_LINT (SRR27320690) | 85 of 86
[a0/229596] NFC…ALORE:FASTQC (SRR17866852) | 12 of 85
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 85
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (144)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[a0/229596] NFC…ALORE:FASTQC (SRR17866852) | 12 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (146)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[72/47abc2] NFC…ALORE:FASTQC (SRR17866850) | 15 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (147)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[ac/21eff8] NFC…ALORE:FASTQC (SRR17866844) | 15 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (148)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[76/98afb9] NFC…ALORE:FASTQC (SRR17866851) | 16 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (149)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[14/f205d3] NFC…ALORE:FASTQC (SRR17866843) | 17 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (150)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/7000c3] NFC…ALORE:FASTQC (SRR27320655) | 18 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (150)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f0/f3664f] NFC…ALORE:FASTQC (SRR17866842) | 19 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (151)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[ab/05a449] NFC…ALORE:FASTQC (SRR27320660) | 19 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (151)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[40/8d058b] NFC…ALORE:FASTQC (SRR17866837) | 20 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (152)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[39/3f7b57] NFC…ALORE:FASTQC (SRR27320669) | 20 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (152)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[39/3f7b57] NFC…ALORE:FASTQC (SRR27320669) | 20 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (152)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[06/6cef90] NFC…ALORE:FASTQC (SRR17866845) | 21 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (153)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[9c/cc1303] NFC…ALORE:FASTQC (SRR17866856) | 21 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (154)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[c3/214a7f] NFC…ALORE:FASTQC (SRR17866854) | 22 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (155)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[b5/95fcca] NFC…ALORE:FASTQC (SRR27320658) | 23 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (157)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[93/97d641] NFC…ALORE:FASTQC (SRR17866858) | 25 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (158)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[16/d48fd0] NFC…ALORE:FASTQC (SRR27320665) | 26 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (158)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[16/d48fd0] NFC…ALORE:FASTQC (SRR27320665) | 26 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (159)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[47/6ae365] NFC…ALORE:FASTQC (SRR27320656) | 27 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (160)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f6/5a1f69] NFC…ALORE:FASTQC (SRR17866857) | 28 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (160)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f6/5a1f69] NFC…ALORE:FASTQC (SRR17866857) | 28 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (160)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[72/47abc2] NFC…ALORE:FASTQC (SRR17866850) | 30 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (162)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d4/d7b3d5] NFC…ALORE:FASTQC (SRR27320661) | 30 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (162)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d9/0efcfb] NFC…ALORE:FASTQC (SRR17866839) | 31 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (163)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[35/b160ba] NFC…ALORE:FASTQC (SRR27320662) | 31 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (164)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[33/c3134a] NFC…ALORE:FASTQC (SRR27320657) | 32 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (165)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[2c/169c35] NFC…ALORE:FASTQC (SRR27320664) | 33 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (165)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[2c/169c35] NFC…ALORE:FASTQC (SRR27320664) | 33 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (166)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[dd/76c369] NFC…ALORE:FASTQC (SRR27320677) | 34 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (167)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[52/3faa21] NFC…ALORE:FASTQC (SRR27320670) | 35 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (168)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[49/cce237] NFC…ALORE:FASTQC (SRR27320667) | 36 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (169)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[e0/b1896b] NFC…ALORE:FASTQC (SRR27320668) | 37 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (170)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[39/3af0fe] NFC…ALORE:FASTQC (SRR27320673) | 38 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (170)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[39/3af0fe] NFC…ALORE:FASTQC (SRR27320673) | 38 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (171)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d8/6727f7] NFC…ALORE:FASTQC (SRR27320671) | 39 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (172)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[4a/9b218e] NFC…ALORE:FASTQC (SRR27320674) | 40 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (172)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[4a/9b218e] NFC…ALORE:FASTQC (SRR27320674) | 40 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (172)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[35/3ebf0e] NFC…ALORE:FASTQC (SRR27320659) | 41 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (173)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[9c/e403c8] NFC…ALORE:FASTQC (SRR27320678) | 41 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 0 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING -
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (173)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[16/d48fd0] NFC…ALORE:FASTQC (SRR27320665) | 43 of 86
[db/6beaf0] NFC…E:TRIMGALORE (SRR17866818) | 1 of 86
[-        ] NFC…ESS:FQ_LINT_AFTER_TRIMMING | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (177)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/bb0897] NFC…ALORE:FASTQC (SRR27320663) | 43 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (179)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[7c/2cef1e] NFC…ALORE:FASTQC (SRR27320680) | 45 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (179)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[7c/2cef1e] NFC…ALORE:FASTQC (SRR27320680) | 45 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (179)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[7c/2cef1e] NFC…ALORE:FASTQC (SRR27320680) | 45 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (180)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[e8/810e48] NFC…ALORE:FASTQC (SRR27320679) | 46 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (182)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d9/4b0a3b] NFC…ALORE:FASTQC (SRR27320684) | 48 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:FQ_SUBSAMPLE -
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (184)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 49 of 86
[79/f261b1] NFC…E:TRIMGALORE (SRR17866847) | 1 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 1 of 1
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (186)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[69/aa5e62] NFC…ALORE:FASTQC (SRR27320694) | 50 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[93/84f792] NFC…TER_TRIMMING (SRR17866818) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (187)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[69/aa5e62] NFC…ALORE:FASTQC (SRR27320694) | 50 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (188)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/566b7f] NFC…ALORE:FASTQC (SRR27320681) | 51 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (189)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[75/69f001] NFC…ALORE:FASTQC (SRR27320691) | 52 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (190)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[ba/833f0c] NFC…ALORE:FASTQC (SRR27320683) | 53 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (192)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[1d/04d939] NFC…ALORE:FASTQC (SRR27320676) | 55 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (192)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[52/3faa21] NFC…ALORE:FASTQC (SRR27320670) | 56 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (193)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[3f/0937f1] NFC…ALORE:FASTQC (SRR27320685) | 56 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (194)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 57 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 1 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 1
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (194)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 57 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 0 of 2
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (195)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 57 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 0 of 2
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (195)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 57 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (197)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 0 of 1
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[9a/ce629d] NFC…ALORE:FASTQC (SRR27320687) | 59 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT -
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (197)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[e8/810e48] NFC…ALORE:FASTQC (SRR27320679) | 60 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[-        ] NFC…PLE_FQ_SALMON:SALMON_QUANT | 0 of 1
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (199)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[6e/3df749] NFC…ALORE:FASTQC (SRR27320692) | 60 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (200)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[e3/7aca9b] NFC…ALORE:FASTQC (SRR27320698) | 61 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (202)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/3754a3] NFC…ALORE:FASTQC (SRR27320696) | 63 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (203)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 64 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[28/2aae52] NFC…FQ_SUBSAMPLE (SRR17866818) | 1 of 2
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (206)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 66 of 86
[b8/4045da] NFC…E:TRIMGALORE (SRR17866822) | 2 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 2
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (206)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 66 of 86
[fd/3ce7dc] NFC…E:TRIMGALORE (SRR17866821) | 3 of 86
[74/302749] NFC…TER_TRIMMING (SRR17866822) | 2 of 3
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (208)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 66 of 86
[fe/6e9129] NFC…E:TRIMGALORE (SRR17866841) | 3 of 86
[2d/ab1cd7] NFC…TER_TRIMMING (SRR17866821) | 2 of 3
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (208)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 66 of 86
[fe/6e9129] NFC…E:TRIMGALORE (SRR17866841) | 3 of 86
[2d/ab1cd7] NFC…TER_TRIMMING (SRR17866821) | 2 of 3
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (208)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[35/732270] NFC…ALORE:FASTQC (SRR27320686) | 68 of 86
[fe/6e9129] NFC…E:TRIMGALORE (SRR17866841) | 3 of 86
[2d/ab1cd7] NFC…TER_TRIMMING (SRR17866821) | 2 of 3
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (208)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d9/4b0a3b] NFC…ALORE:FASTQC (SRR27320684) | 69 of 86
[fe/6e9129] NFC…E:TRIMGALORE (SRR17866841) | 3 of 86
[2d/ab1cd7] NFC…TER_TRIMMING (SRR17866821) | 2 of 3
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (208)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/566b7f] NFC…ALORE:FASTQC (SRR27320681) | 70 of 86
[fe/6e9129] NFC…E:TRIMGALORE (SRR17866841) | 3 of 86
[2d/ab1cd7] NFC…TER_TRIMMING (SRR17866821) | 2 of 3
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (209)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[03/b9651a] NFC…E:TRIMGALORE (SRR17866817) | 4 of 86
[2d/ab1cd7] NFC…TER_TRIMMING (SRR17866821) | 2 of 4
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (210)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[03/b9651a] NFC…E:TRIMGALORE (SRR17866817) | 4 of 86
[91/1a4135] NFC…TER_TRIMMING (SRR17866817) | 2 of 4
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (211)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[3b/623015] NFC…E:TRIMGALORE (SRR17866827) | 5 of 86
[91/1a4135] NFC…TER_TRIMMING (SRR17866817) | 2 of 5
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (212)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[3b/623015] NFC…E:TRIMGALORE (SRR17866827) | 5 of 86
[e6/6dc241] NFC…TER_TRIMMING (SRR17866827) | 2 of 5
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (213)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[ee/2008a5] NFC…E:TRIMGALORE (SRR17866834) | 6 of 86
[e6/6dc241] NFC…TER_TRIMMING (SRR17866827) | 2 of 6
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (214)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[ee/2008a5] NFC…E:TRIMGALORE (SRR17866834) | 6 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 2 of 6
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (214)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[d8/de40b7] NFC…E:TRIMGALORE (SRR17866820) | 8 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 2 of 8
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (217)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 8 of 86
[f9/ba4d5c] NFC…TER_TRIMMING (SRR17866820) | 2 of 8
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (218)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[31/2f394a] NFC…ALORE:FASTQC (SRR27320688) | 71 of 86
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 8 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 2 of 8
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (218)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[6e/3df749] NFC…ALORE:FASTQC (SRR27320692) | 72 of 86
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 8 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 2 of 8
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (218)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[e3/7aca9b] NFC…ALORE:FASTQC (SRR27320698) | 73 of 86
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 8 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 2 of 8
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (219)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d2/ec2044] NFC…ALORE:FASTQC (SRR27320689) | 74 of 86
[42/79bbc9] NFC…E:TRIMGALORE (SRR17866836) | 9 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 2 of 9
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (220)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[d2/ec2044] NFC…ALORE:FASTQC (SRR27320689) | 74 of 86
[42/79bbc9] NFC…E:TRIMGALORE (SRR17866836) | 9 of 86
[1d/c0cccf] NFC…TER_TRIMMING (SRR17866836) | 2 of 9
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (220)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[ba/833f0c] NFC…ALORE:FASTQC (SRR27320683) | 75 of 86
[42/79bbc9] NFC…E:TRIMGALORE (SRR17866836) | 9 of 86
[1d/c0cccf] NFC…TER_TRIMMING (SRR17866836) | 2 of 9
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (220)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[c4/ba9f01] NFC…ALORE:FASTQC (SRR27320675) | 77 of 86
[42/79bbc9] NFC…E:TRIMGALORE (SRR17866836) | 9 of 86
[1d/c0cccf] NFC…TER_TRIMMING (SRR17866836) | 2 of 9
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (222)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[c4/ba9f01] NFC…ALORE:FASTQC (SRR27320675) | 77 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[8c/cf1150] NFC…TER_TRIMMING (SRR17866842) | 2 of 10
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (222)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[3f/0937f1] NFC…ALORE:FASTQC (SRR27320685) | 78 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[8c/cf1150] NFC…TER_TRIMMING (SRR17866842) | 2 of 10
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (222)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[1d/04d939] NFC…ALORE:FASTQC (SRR27320676) | 80 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[8c/cf1150] NFC…TER_TRIMMING (SRR17866842) | 2 of 10
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (222)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[8c/cf1150] NFC…TER_TRIMMING (SRR17866842) | 2 of 10
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 2
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (222)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 6 of 10
[fa/408803] NFC…FQ_SUBSAMPLE (SRR17866822) | 2 of 6
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (226)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 6 of 10
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[e9/0d1688] NFC…SALMON_QUANT (SRR17866822) | 0 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
Plus 31 more processes waiting for tasks…

executor >  slurm (226)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 6 of 10
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[-        ] NFC…UDO_ALIGNMENT:SALMON_QUANT | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (227)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 6 of 10
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (227)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 6 of 10
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (227)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 10 of 86
[5d/766af4] NFC…TER_TRIMMING (SRR17866819) | 6 of 10
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (229)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[5b/98cece] NFC…ALORE:FASTQC (SRR27320682) | 81 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 6 of 11
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (229)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[b4/39f5e9] NFC…ALORE:FASTQC (SRR27320695) | 82 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 6 of 11
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (229)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/3754a3] NFC…ALORE:FASTQC (SRR27320696) | 83 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 6 of 11
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 6
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (229)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/3754a3] NFC…ALORE:FASTQC (SRR27320696) | 83 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[8c/cf1150] NFC…TER_TRIMMING (SRR17866842) | 7 of 11
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 2 of 7
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (230)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/3754a3] NFC…ALORE:FASTQC (SRR27320696) | 83 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[8c/cf1150] NFC…TER_TRIMMING (SRR17866842) | 7 of 11
[55/050619] NFC…FQ_SUBSAMPLE (SRR17866842) | 2 of 7
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (230)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/3754a3] NFC…ALORE:FASTQC (SRR27320696) | 83 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[1d/c0cccf] NFC…TER_TRIMMING (SRR17866836) | 8 of 11
[55/050619] NFC…FQ_SUBSAMPLE (SRR17866842) | 2 of 8
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (231)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[05/3754a3] NFC…ALORE:FASTQC (SRR27320696) | 83 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[1d/c0cccf] NFC…TER_TRIMMING (SRR17866836) | 8 of 11
[06/c76479] NFC…FQ_SUBSAMPLE (SRR17866836) | 2 of 8
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (231)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 85 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 10 of 11
[06/c76479] NFC…FQ_SUBSAMPLE (SRR17866836) | 2 of 10
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (233)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 85 of 86
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 11 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 10 of 11
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 2 of 10
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 2
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (234)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 85 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 12 of 86
[ac/9cc787] NFC…TER_TRIMMING (SRR17866825) | 10 of 12
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 4 of 10
[59/71a354] NFC…SALMON_QUANT (SRR17866818) | 1 of 4
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (237)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 85 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 12 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 10 of 12
[35/346e6d] NFC…FQ_SUBSAMPLE (SRR17866819) | 4 of 10
[9c/3c1c0c] NFC…SALMON_QUANT (SRR17866827) | 1 of 4
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (237)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 85 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 12 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 10 of 12
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[9c/3c1c0c] NFC…SALMON_QUANT (SRR17866827) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (239)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[f1/4aee7b] NFC…ALORE:FASTQC (SRR27320697) | 85 of 86
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 12 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 10 of 12
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (239)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 12 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 10 of 12
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (239)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/d5212c] NFC…E:TRIMGALORE (SRR17866837) | 12 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 10 of 12
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (240)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[51/d578f9] NFC…E:TRIMGALORE (SRR17866853) | 13 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 10 of 13
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (241)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[51/d578f9] NFC…E:TRIMGALORE (SRR17866853) | 13 of 86
[ea/9dd845] NFC…TER_TRIMMING (SRR17866832) | 10 of 13
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (242)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[ea/9dd845] NFC…TER_TRIMMING (SRR17866832) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (243)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 1 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (243)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 3 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 1
Plus 30 more processes waiting for tasks…

executor >  slurm (243)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 3 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 0 of 3
Plus 30 more processes waiting for tasks…

executor >  slurm (244)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 3 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b4/2140e3] NFC…SALMON_QUANT (SRR17866817) | 0 of 3
Plus 30 more processes waiting for tasks…

executor >  slurm (245)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[dc/a304d1] NFC…SALMON_QUANT (SRR17866821) | 3 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[46/2bfcfb] NFC…SALMON_QUANT (SRR17866821) | 0 of 3
Plus 30 more processes waiting for tasks…

executor >  slurm (245)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[2a/12837b] NFC…SALMON_QUANT (SRR17866819) | 4 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[46/2bfcfb] NFC…SALMON_QUANT (SRR17866821) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (246)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[b2/3e7ade] NFC…TER_TRIMMING (SRR17866829) | 10 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 10
[2a/12837b] NFC…SALMON_QUANT (SRR17866819) | 4 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (246)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 11 of 14
[17/df425f] NFC…FQ_SUBSAMPLE (SRR17866817) | 6 of 11
[2a/12837b] NFC…SALMON_QUANT (SRR17866819) | 4 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (247)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[a0/aaa538] NFC…TER_TRIMMING (SRR17866837) | 11 of 14
[4e/1c9162] NFC…FQ_SUBSAMPLE (SRR17866837) | 6 of 11
[2a/12837b] NFC…SALMON_QUANT (SRR17866819) | 4 of 6
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (247)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 12 of 14
[06/c76479] NFC…FQ_SUBSAMPLE (SRR17866836) | 8 of 12
[2a/12837b] NFC…SALMON_QUANT (SRR17866819) | 4 of 8
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (250)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 12 of 14
[b6/4c43e5] NFC…FQ_SUBSAMPLE (SRR17866826) | 8 of 12
[71/038096] NFC…SALMON_QUANT (SRR17866836) | 4 of 8
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (250)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 12 of 14
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[71/038096] NFC…SALMON_QUANT (SRR17866836) | 4 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (251)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 12 of 14
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[63/4206b5] NFC…SALMON_QUANT (SRR17866825) | 4 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (251)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 14 of 86
[6b/e1f9f9] NFC…TER_TRIMMING (SRR17866826) | 12 of 14
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[63/4206b5] NFC…SALMON_QUANT (SRR17866825) | 4 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[3c/518f84] NFC…SALMON_QUANT (SRR17866819) | 0 of 4
Plus 30 more processes waiting for tasks…

executor >  slurm (255)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e2/f4c54a] NFC…E:TRIMGALORE (SRR17866823) | 15 of 86
[94/86e1fa] NFC…TER_TRIMMING (SRR17866823) | 12 of 15
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[d0/122b69] NFC…SALMON_QUANT (SRR17866820) | 5 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 5
Plus 30 more processes waiting for tasks…

executor >  slurm (256)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8b/405f5d] NFC…E:TRIMGALORE (SRR17866824) | 16 of 86
[94/86e1fa] NFC…TER_TRIMMING (SRR17866823) | 12 of 16
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[d0/122b69] NFC…SALMON_QUANT (SRR17866820) | 5 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 5
Plus 30 more processes waiting for tasks…

executor >  slurm (257)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8b/405f5d] NFC…E:TRIMGALORE (SRR17866824) | 16 of 86
[5f/115977] NFC…TER_TRIMMING (SRR17866824) | 12 of 16
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[d0/122b69] NFC…SALMON_QUANT (SRR17866820) | 5 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 5
Plus 30 more processes waiting for tasks…

executor >  slurm (257)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8b/405f5d] NFC…E:TRIMGALORE (SRR17866824) | 16 of 86
[5f/115977] NFC…TER_TRIMMING (SRR17866824) | 12 of 16
[b8/e51f83] NFC…FQ_SUBSAMPLE (SRR17866825) | 10 of 12
[9c/3c1c0c] NFC…SALMON_QUANT (SRR17866827) | 6 of 10
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 6
Plus 30 more processes waiting for tasks…

executor >  slurm (262)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 14 of 17
[89/790249] NFC…FQ_SUBSAMPLE (SRR17866829) | 11 of 14
[97/b01d49] NFC…SALMON_QUANT (SRR17866826) | 6 of 11
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 6
Plus 30 more processes waiting for tasks…

executor >  slurm (262)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 14 of 17
[4e/1c9162] NFC…FQ_SUBSAMPLE (SRR17866837) | 12 of 14
[97/b01d49] NFC…SALMON_QUANT (SRR17866826) | 6 of 12
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 6
Plus 30 more processes waiting for tasks…

executor >  slurm (262)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 14 of 17
[4e/1c9162] NFC…FQ_SUBSAMPLE (SRR17866837) | 12 of 14
[97/b01d49] NFC…SALMON_QUANT (SRR17866826) | 6 of 12
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 6
Plus 30 more processes waiting for tasks…

executor >  slurm (262)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 14 of 17
[4e/1c9162] NFC…FQ_SUBSAMPLE (SRR17866837) | 12 of 14
[97/b01d49] NFC…SALMON_QUANT (SRR17866826) | 6 of 12
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 6
Plus 30 more processes waiting for tasks…

executor >  slurm (262)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 14 of 17
[4e/1c9162] NFC…FQ_SUBSAMPLE (SRR17866837) | 12 of 14
[ef/265878] NFC…SALMON_QUANT (SRR17866842) | 8 of 12
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 6
Plus 30 more processes waiting for tasks…

executor >  slurm (263)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 14 of 17
[4e/1c9162] NFC…FQ_SUBSAMPLE (SRR17866837) | 12 of 14
[3e/3d7c60] NFC…SALMON_QUANT (SRR17866837) | 8 of 12
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (263)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 17 of 17
[89/790249] NFC…FQ_SUBSAMPLE (SRR17866829) | 13 of 17
[3e/3d7c60] NFC…SALMON_QUANT (SRR17866837) | 8 of 13
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (264)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 17 of 17
[e0/118a8a] NFC…FQ_SUBSAMPLE (SRR17866823) | 13 of 17
[3e/3d7c60] NFC…SALMON_QUANT (SRR17866837) | 8 of 13
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (267)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4b/ca37e0] NFC…E:TRIMGALORE (SRR17866843) | 17 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 17 of 17
[0e/791a2f] NFC…FQ_SUBSAMPLE (SRR17866831) | 13 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 13
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (268)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 18 of 86
[ed/5670f8] NFC…TER_TRIMMING (SRR17866831) | 17 of 18
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (269)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 18 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 17 of 18
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (269)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 18 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 17 of 18
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (269)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 18 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 17 of 18
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[06/f2b8fa] NFC…SALMON_QUANT (SRR17866822) | 0 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (269)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 18 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 17 of 18
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/38cd41] NFC…SALMON_QUANT (SRR17866818) | 1 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (270)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 18 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 17 of 18
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (271)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 19 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 17 of 19
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (272)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[75/49143c] NFC…E:TRIMGALORE (SRR17866833) | 19 of 86
[03/e91776] NFC…TER_TRIMMING (SRR17866833) | 17 of 19
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (273)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[03/e91776] NFC…TER_TRIMMING (SRR17866833) | 17 of 20
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (274)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 17 of 20
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[30/063c18] NFC…SALMON_QUANT (SRR17866829) | 8 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 8
Plus 30 more processes waiting for tasks…

executor >  slurm (275)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 17 of 20
[6f/ff4dc7] NFC…FQ_SUBSAMPLE (SRR17866832) | 14 of 17
[12/dba974] NFC…SALMON_QUANT (SRR17866832) | 10 of 14
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (275)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 17 of 20
[0e/791a2f] NFC…FQ_SUBSAMPLE (SRR17866831) | 16 of 17
[12/dba974] NFC…SALMON_QUANT (SRR17866832) | 10 of 16
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (276)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 17 of 20
[0e/791a2f] NFC…FQ_SUBSAMPLE (SRR17866831) | 16 of 17
[33/2ec861] NFC…SALMON_QUANT (SRR17866831) | 10 of 16
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (276)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[e0/118a8a] NFC…FQ_SUBSAMPLE (SRR17866823) | 17 of 18
[33/2ec861] NFC…SALMON_QUANT (SRR17866831) | 10 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (277)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[33/2ec861] NFC…SALMON_QUANT (SRR17866831) | 10 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (277)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[33/2ec861] NFC…SALMON_QUANT (SRR17866831) | 10 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (277)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[33/2ec861] NFC…SALMON_QUANT (SRR17866831) | 10 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (277)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[33/2ec861] NFC…SALMON_QUANT (SRR17866831) | 10 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 10
Plus 30 more processes waiting for tasks…

executor >  slurm (277)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[3e/3d7c60] NFC…SALMON_QUANT (SRR17866837) | 12 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 11
Plus 30 more processes waiting for tasks…

executor >  slurm (279)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 12 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[79/b558e1] NFC…SALMON_QUANT (SRR17866827) | 1 of 12
Plus 30 more processes waiting for tasks…

executor >  slurm (280)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[3f/4a2ac4] NFC…TER_TRIMMING (SRR17866830) | 18 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 17 of 18
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 12 of 17
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[31/8ba228] NFC…SALMON_QUANT (SRR17866842) | 2 of 12
Plus 30 more processes waiting for tasks…

executor >  slurm (280)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[8f/5629e6] NFC…FQ_SUBSAMPLE (SRR17866830) | 18 of 20
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 12 of 18
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[31/8ba228] NFC…SALMON_QUANT (SRR17866842) | 2 of 12
Plus 30 more processes waiting for tasks…

executor >  slurm (282)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 18 of 20
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 12 of 18
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[31/8ba228] NFC…SALMON_QUANT (SRR17866842) | 2 of 12
Plus 30 more processes waiting for tasks…

executor >  slurm (282)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 18 of 20
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 12 of 18
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[31/8ba228] NFC…SALMON_QUANT (SRR17866842) | 2 of 12
Plus 30 more processes waiting for tasks…

executor >  slurm (282)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 18 of 20
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 12 of 18
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[31/8ba228] NFC…SALMON_QUANT (SRR17866842) | 2 of 12
Plus 30 more processes waiting for tasks…

executor >  slurm (284)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 18 of 20
[1c/5cb4c2] NFC…SALMON_QUANT (SRR17866830) | 13 of 18
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b3/c12333] NFC…SALMON_QUANT (SRR17866836) | 3 of 13
Plus 30 more processes waiting for tasks…

executor >  slurm (285)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 18 of 20
[1c/5cb4c2] NFC…SALMON_QUANT (SRR17866830) | 13 of 18
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 13
Plus 30 more processes waiting for tasks…

executor >  slurm (285)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[1c/5cb4c2] NFC…SALMON_QUANT (SRR17866830) | 13 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 13
Plus 30 more processes waiting for tasks…

executor >  slurm (285)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[1c/5cb4c2] NFC…SALMON_QUANT (SRR17866830) | 13 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 13
Plus 30 more processes waiting for tasks…

executor >  slurm (286)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[84/db545b] NFC…SALMON_QUANT (SRR17866833) | 14 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 14
Plus 30 more processes waiting for tasks…

executor >  slurm (286)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[46/ddfb89] NFC…SALMON_QUANT (SRR17866824) | 15 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 15
Plus 30 more processes waiting for tasks…

executor >  slurm (287)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 15 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 15
Plus 30 more processes waiting for tasks…

executor >  slurm (287)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[12/dba974] NFC…SALMON_QUANT (SRR17866832) | 17 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 17
Plus 30 more processes waiting for tasks…

executor >  slurm (287)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[0a/96dcf1] NFC…SALMON_QUANT (SRR17866823) | 18 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 18
Plus 30 more processes waiting for tasks…

executor >  slurm (287)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[84/db545b] NFC…SALMON_QUANT (SRR17866833) | 19 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[03/067141] NFC…SALMON_QUANT (SRR17866825) | 4 of 19
Plus 30 more processes waiting for tasks…

executor >  slurm (288)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[84/db545b] NFC…SALMON_QUANT (SRR17866833) | 19 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b1/4c8826] NFC…SALMON_QUANT (SRR17866820) | 5 of 19
Plus 30 more processes waiting for tasks…

executor >  slurm (288)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[84/db545b] NFC…SALMON_QUANT (SRR17866833) | 19 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b1/4c8826] NFC…SALMON_QUANT (SRR17866820) | 5 of 19
Plus 30 more processes waiting for tasks…

executor >  slurm (288)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b1/4c8826] NFC…SALMON_QUANT (SRR17866820) | 5 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (289)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[18/f5fcce] NFC…SALMON_QUANT (SRR17866826) | 6 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (290)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/b33412] NFC…SALMON_QUANT (SRR17866837) | 7 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (291)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[81/8c9219] NFC…SALMON_QUANT (SRR17866831) | 8 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (292)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 9 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (292)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d5/b8680b] NFC…E:TRIMGALORE (SRR17866828) | 20 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 20
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 9 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (292)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[74/12a32e] NFC…E:TRIMGALORE (SRR17866845) | 21 of 86
[45/c34ba9] NFC…TER_TRIMMING (SRR17866828) | 20 of 21
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 9 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (294)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/8005db] NFC…E:TRIMGALORE (SRR27320669) | 21 of 86
[f0/0b7984] NFC…TER_TRIMMING (SRR17866845) | 20 of 21
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 9 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (295)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[f0/0b7984] NFC…TER_TRIMMING (SRR17866845) | 20 of 22
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 9 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (296)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 20 of 22
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 9 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (296)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 20 of 22
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b1/4c8826] NFC…SALMON_QUANT (SRR17866820) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (297)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 20 of 22
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (297)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 20 of 22
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 20
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (297)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[f0/0b7984] NFC…TER_TRIMMING (SRR17866845) | 21 of 22
[34/f61dad] NFC…FQ_SUBSAMPLE (SRR17866833) | 20 of 21
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (298)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[f0/0b7984] NFC…TER_TRIMMING (SRR17866845) | 21 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 20 of 21
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (298)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 20 of 22
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (299)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[dc/196d06] NFC…FQ_SUBSAMPLE (SRR17866847) | 20 of 22
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (299)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[dc/196d06] NFC…FQ_SUBSAMPLE (SRR17866847) | 20 of 22
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (299)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[dc/196d06] NFC…FQ_SUBSAMPLE (SRR17866847) | 20 of 22
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 20
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (299)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[dc/196d06] NFC…FQ_SUBSAMPLE (SRR17866847) | 21 of 22
[00/6131d4] NFC…SALMON_QUANT (SRR17866828) | 20 of 21
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (300)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[dc/196d06] NFC…FQ_SUBSAMPLE (SRR17866847) | 21 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 20 of 21
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (300)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 20 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (301)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[cd/16fb80] NFC…SALMON_QUANT (SRR17866845) | 20 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (301)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[cd/16fb80] NFC…SALMON_QUANT (SRR17866845) | 20 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (301)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[cd/16fb80] NFC…SALMON_QUANT (SRR17866845) | 21 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 20
Plus 30 more processes waiting for tasks…

executor >  slurm (301)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[cd/16fb80] NFC…SALMON_QUANT (SRR17866845) | 21 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 21
Plus 30 more processes waiting for tasks…

executor >  slurm (301)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/ed4d2c] NFC…SALMON_QUANT (SRR17866824) | 10 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (302)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/da9a83] NFC…SALMON_QUANT (SRR17866829) | 11 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (302)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/faf6b1] NFC…SALMON_QUANT (SRR17866830) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (303)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 22 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 22
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (304)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 23 of 86
[b7/e81c17] NFC…TER_TRIMMING (SRR17866847) | 22 of 23
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (305)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 23 of 86
[67/9c810f] NFC…TER_TRIMMING (SRR27320655) | 22 of 23
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (305)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 23 of 86
[67/9c810f] NFC…TER_TRIMMING (SRR27320655) | 22 of 23
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (305)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[77/5555fe] NFC…E:TRIMGALORE (SRR27320655) | 23 of 86
[67/9c810f] NFC…TER_TRIMMING (SRR27320655) | 22 of 23
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (305)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[fe/6e9129] NFC…E:TRIMGALORE (SRR17866841) | 24 of 86
[67/9c810f] NFC…TER_TRIMMING (SRR27320655) | 22 of 24
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (307)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[fe/63a067] NFC…E:TRIMGALORE (SRR27320659) | 24 of 86
[1a/b1f2a4] NFC…TER_TRIMMING (SRR17866841) | 22 of 24
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (307)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[51/1601d5] NFC…E:TRIMGALORE (SRR17866852) | 25 of 86
[1a/b1f2a4] NFC…TER_TRIMMING (SRR17866841) | 22 of 25
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (309)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[63/82cff5] NFC…E:TRIMGALORE (SRR17866858) | 25 of 86
[53/81139a] NFC…TER_TRIMMING (SRR17866852) | 22 of 25
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 12 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (309)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/54f15d] NFC…E:TRIMGALORE (SRR27320660) | 26 of 86
[53/81139a] NFC…TER_TRIMMING (SRR17866852) | 22 of 26
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[81/8c9219] NFC…SALMON_QUANT (SRR17866831) | 13 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (312)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[70/c0dac1] NFC…E:TRIMGALORE (SRR27320656) | 26 of 86
[8d/34ebd2] NFC…TER_TRIMMING (SRR27320660) | 22 of 26
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0c/9f8b2f] NFC…SALMON_QUANT (SRR17866823) | 13 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (312)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/6aba55] NFC…E:TRIMGALORE (SRR17866850) | 27 of 86
[8d/34ebd2] NFC…TER_TRIMMING (SRR27320660) | 22 of 27
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0c/9f8b2f] NFC…SALMON_QUANT (SRR17866823) | 13 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (314)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8a/956a4a] NFC…E:TRIMGALORE (SRR17866857) | 27 of 86
[ae/97d8fa] NFC…TER_TRIMMING (SRR17866850) | 22 of 27
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0c/9f8b2f] NFC…SALMON_QUANT (SRR17866823) | 13 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (314)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8a/956a4a] NFC…E:TRIMGALORE (SRR17866857) | 27 of 86
[ae/97d8fa] NFC…TER_TRIMMING (SRR17866850) | 22 of 27
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/b33412] NFC…SALMON_QUANT (SRR17866837) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (315)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8a/956a4a] NFC…E:TRIMGALORE (SRR17866857) | 27 of 86
[ae/97d8fa] NFC…TER_TRIMMING (SRR17866850) | 22 of 27
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 22
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (315)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8a/956a4a] NFC…E:TRIMGALORE (SRR17866857) | 27 of 86
[67/9c810f] NFC…TER_TRIMMING (SRR27320655) | 23 of 27
[0e/b72358] NFC…FQ_SUBSAMPLE (SRR17866845) | 22 of 23
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (316)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8a/956a4a] NFC…E:TRIMGALORE (SRR17866857) | 27 of 86
[67/9c810f] NFC…TER_TRIMMING (SRR27320655) | 23 of 27
[74/22be05] NFC…FQ_SUBSAMPLE (SRR27320655) | 22 of 23
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (318)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[89/cf83d0] NFC…E:TRIMGALORE (SRR17866855) | 28 of 86
[44/0e36a8] NFC…TER_TRIMMING (SRR17866839) | 23 of 28
[74/22be05] NFC…FQ_SUBSAMPLE (SRR27320655) | 22 of 23
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (318)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[89/cf83d0] NFC…E:TRIMGALORE (SRR17866855) | 28 of 86
[44/0e36a8] NFC…TER_TRIMMING (SRR17866839) | 23 of 28
[74/22be05] NFC…FQ_SUBSAMPLE (SRR27320655) | 22 of 23
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (318)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[89/cf83d0] NFC…E:TRIMGALORE (SRR17866855) | 28 of 86
[8d/34ebd2] NFC…TER_TRIMMING (SRR27320660) | 24 of 28
[74/22be05] NFC…FQ_SUBSAMPLE (SRR27320655) | 22 of 24
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (319)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[89/cf83d0] NFC…E:TRIMGALORE (SRR17866855) | 28 of 86
[8d/34ebd2] NFC…TER_TRIMMING (SRR27320660) | 24 of 28
[60/f6ca65] NFC…FQ_SUBSAMPLE (SRR27320660) | 22 of 24
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (321)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 29 of 86
[d0/8e58e1] NFC…TER_TRIMMING (SRR17866840) | 24 of 29
[60/f6ca65] NFC…FQ_SUBSAMPLE (SRR27320660) | 22 of 24
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 14 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (323)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 29 of 86
[44/0e36a8] NFC…TER_TRIMMING (SRR17866839) | 25 of 29
[92/e2f204] NFC…FQ_SUBSAMPLE (SRR17866839) | 22 of 25
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 22
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (323)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 29 of 86
[ae/97d8fa] NFC…TER_TRIMMING (SRR17866850) | 27 of 29
[74/22be05] NFC…FQ_SUBSAMPLE (SRR27320655) | 23 of 27
[63/269b6e] NFC…SALMON_QUANT (SRR17866847) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (326)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 29 of 86
[ae/97d8fa] NFC…TER_TRIMMING (SRR17866850) | 27 of 29
[75/a9217d] NFC…FQ_SUBSAMPLE (SRR17866850) | 23 of 27
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (326)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 29 of 86
[1a/b1f2a4] NFC…TER_TRIMMING (SRR17866841) | 28 of 29
[75/a9217d] NFC…FQ_SUBSAMPLE (SRR17866850) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (327)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 29 of 86
[1a/b1f2a4] NFC…TER_TRIMMING (SRR17866841) | 28 of 29
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (327)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[7f/b3513a] NFC…E:TRIMGALORE (SRR17866846) | 30 of 86
[1a/b1f2a4] NFC…TER_TRIMMING (SRR17866841) | 28 of 30
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (329)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[27/49b3ff] NFC…E:TRIMGALORE (SRR27320661) | 30 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 28 of 30
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (329)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[51/d578f9] NFC…E:TRIMGALORE (SRR17866853) | 31 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 28 of 31
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (330)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/e860ea] NFC…E:TRIMGALORE (SRR27320662) | 31 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 28 of 31
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (331)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/e860ea] NFC…E:TRIMGALORE (SRR27320662) | 31 of 86
[4a/0901ce] NFC…TER_TRIMMING (SRR17866853) | 28 of 31
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (332)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[4a/0901ce] NFC…TER_TRIMMING (SRR17866853) | 28 of 32
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (333)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 23 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 23
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (333)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[75/a9217d] NFC…FQ_SUBSAMPLE (SRR17866850) | 25 of 28
[06/5b146b] NFC…SALMON_QUANT (SRR27320655) | 22 of 25
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (335)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[75/a9217d] NFC…FQ_SUBSAMPLE (SRR17866850) | 25 of 28
[18/f42a8c] NFC…SALMON_QUANT (SRR27320660) | 22 of 25
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (335)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[90/3150da] NFC…FQ_SUBSAMPLE (SRR17866852) | 26 of 28
[18/f42a8c] NFC…SALMON_QUANT (SRR27320660) | 22 of 26
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (336)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[90/3150da] NFC…FQ_SUBSAMPLE (SRR17866852) | 26 of 28
[e1/8f3842] NFC…SALMON_QUANT (SRR17866852) | 22 of 26
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (336)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 28 of 28
[e1/8f3842] NFC…SALMON_QUANT (SRR17866852) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (337)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 28 of 32
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 28 of 28
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (337)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[d0/8e58e1] NFC…TER_TRIMMING (SRR17866840) | 29 of 32
[e5/8e67bf] NFC…FQ_SUBSAMPLE (SRR17866841) | 28 of 29
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (338)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[d0/8e58e1] NFC…TER_TRIMMING (SRR17866840) | 29 of 32
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (338)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e4/c0706a] NFC…E:TRIMGALORE (SRR17866848) | 32 of 86
[d0/8e58e1] NFC…TER_TRIMMING (SRR17866840) | 29 of 32
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (339)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bb/2cf668] NFC…E:TRIMGALORE (SRR17866856) | 33 of 86
[d0/8e58e1] NFC…TER_TRIMMING (SRR17866840) | 29 of 33
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (340)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bb/2cf668] NFC…E:TRIMGALORE (SRR17866856) | 33 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 29 of 33
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 22 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 22
Plus 30 more processes waiting for tasks…

executor >  slurm (341)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bb/2cf668] NFC…E:TRIMGALORE (SRR17866856) | 33 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 29 of 33
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (343)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[d6/b5f910] NFC…TER_TRIMMING (SRR17866834) | 29 of 34
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 15 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (344)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[d6/b5f910] NFC…TER_TRIMMING (SRR17866834) | 29 of 34
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 29
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (344)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[4a/0901ce] NFC…TER_TRIMMING (SRR17866853) | 30 of 34
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 28 of 30
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (345)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[4a/0901ce] NFC…TER_TRIMMING (SRR17866853) | 30 of 34
[b2/3ac50a] NFC…FQ_SUBSAMPLE (SRR17866853) | 28 of 30
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (345)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 31 of 34
[b2/3ac50a] NFC…FQ_SUBSAMPLE (SRR17866853) | 28 of 31
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (346)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[9d/4a17e4] NFC…TER_TRIMMING (SRR17866848) | 31 of 34
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 28 of 31
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (346)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 32 of 34
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 28 of 32
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (347)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 32 of 34
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 28 of 32
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 24 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 24
Plus 30 more processes waiting for tasks…

executor >  slurm (347)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 32 of 34
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 28 of 32
[70/49135d] NFC…SALMON_QUANT (SRR17866841) | 25 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 25
Plus 30 more processes waiting for tasks…

executor >  slurm (347)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 32 of 34
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 28 of 32
[18/f42a8c] NFC…SALMON_QUANT (SRR27320660) | 27 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 27
Plus 30 more processes waiting for tasks…

executor >  slurm (347)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[cf/4db14d] NFC…TER_TRIMMING (SRR17866846) | 32 of 34
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 28 of 32
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 28 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (347)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 33 of 34
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 28 of 33
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 28 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (348)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 33 of 34
[80/b7bb30] NFC…FQ_SUBSAMPLE (SRR17866856) | 28 of 33
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 28 of 28
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (348)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 33 of 34
[b2/3ac50a] NFC…FQ_SUBSAMPLE (SRR17866853) | 29 of 33
[32/818c86] NFC…SALMON_QUANT (SRR17866839) | 28 of 29
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (349)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 33 of 34
[b2/3ac50a] NFC…FQ_SUBSAMPLE (SRR17866853) | 29 of 33
[1e/01cd0c] NFC…SALMON_QUANT (SRR17866853) | 28 of 29
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (349)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 33 of 34
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 30 of 33
[1e/01cd0c] NFC…SALMON_QUANT (SRR17866853) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (350)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[7f/3843e0] NFC…TER_TRIMMING (SRR17866856) | 33 of 34
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 30 of 33
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (350)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[d6/b5f910] NFC…TER_TRIMMING (SRR17866834) | 34 of 34
[2e/7a1858] NFC…FQ_SUBSAMPLE (SRR17866840) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (351)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[d6/b5f910] NFC…TER_TRIMMING (SRR17866834) | 34 of 34
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (351)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 34 of 86
[d6/b5f910] NFC…TER_TRIMMING (SRR17866834) | 34 of 34
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (353)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 16 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (353)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9e/5cb823] NFC…SALMON_QUANT (SRR17866832) | 17 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (354)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 28 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 28
Plus 30 more processes waiting for tasks…

executor >  slurm (354)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 30 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 30 of 30
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (354)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[80/b7bb30] NFC…FQ_SUBSAMPLE (SRR17866856) | 31 of 34
[83/89a521] NFC…SALMON_QUANT (SRR17866840) | 30 of 31
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (355)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[80/b7bb30] NFC…FQ_SUBSAMPLE (SRR17866856) | 31 of 34
[e3/c679e4] NFC…SALMON_QUANT (SRR17866856) | 30 of 31
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (355)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 32 of 34
[e3/c679e4] NFC…SALMON_QUANT (SRR17866856) | 30 of 32
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (356)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[20/ed5009] NFC…FQ_SUBSAMPLE (SRR17866846) | 32 of 34
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 30 of 32
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (356)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 30 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (357)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 30 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (357)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 35 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 35
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 30 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (358)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 36 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 34 of 36
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 30 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (359)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 36 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 34 of 36
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 30 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (359)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 36 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 34 of 36
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 32 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 30
Plus 30 more processes waiting for tasks…

executor >  slurm (359)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[59/903bc9] NFC…E:TRIMGALORE (SRR17866849) | 36 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 34 of 36
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 34
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 32 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (360)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[85/19f773] NFC…TER_TRIMMING (SRR17866844) | 35 of 37
[79/fb1c8b] NFC…FQ_SUBSAMPLE (SRR17866848) | 33 of 35
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 32 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (362)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[5c/086fa9] NFC…FQ_SUBSAMPLE (SRR17866844) | 33 of 35
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 32 of 33
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (362)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 34 of 35
[53/fb7084] NFC…SALMON_QUANT (SRR17866846) | 32 of 34
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (363)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 34 of 35
[9e/37d1e0] NFC…SALMON_QUANT (SRR17866834) | 32 of 34
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (363)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 34 of 35
[9e/37d1e0] NFC…SALMON_QUANT (SRR17866834) | 32 of 34
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[19/4d9ca7] NFC…SALMON_QUANT (SRR17866847) | 17 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (364)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 34 of 35
[9e/37d1e0] NFC…SALMON_QUANT (SRR17866834) | 32 of 34
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[2a/ba7ff3] NFC…SALMON_QUANT (SRR17866850) | 18 of 32
Plus 30 more processes waiting for tasks…

executor >  slurm (364)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 34 of 35
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 33 of 34
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[2a/ba7ff3] NFC…SALMON_QUANT (SRR17866850) | 18 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (365)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[c1/90ac2f] NFC…FQ_SUBSAMPLE (SRR17866834) | 34 of 35
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 33 of 34
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 19 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (365)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 35 of 37
[5c/086fa9] NFC…FQ_SUBSAMPLE (SRR17866844) | 35 of 35
[a8/e4b7a6] NFC…SALMON_QUANT (SRR17866848) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 19 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (367)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 36 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 35 of 36
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 19 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (367)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 36 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 35 of 36
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 19 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (367)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 36 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 35 of 36
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[74/ee5d15] NFC…SALMON_QUANT (SRR17866833) | 19 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (367)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 36 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 35 of 36
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[59/1eafcd] NFC…SALMON_QUANT (SRR17866845) | 20 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (368)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[66/f43168] NFC…TER_TRIMMING (SRR17866851) | 36 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 35 of 36
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[27/f8e96f] NFC…SALMON_QUANT (SRR17866841) | 20 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (368)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 35 of 37
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[27/f8e96f] NFC…SALMON_QUANT (SRR17866841) | 20 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (369)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 35 of 37
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 33 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[27/f8e96f] NFC…SALMON_QUANT (SRR17866841) | 20 of 33
Plus 30 more processes waiting for tasks…

executor >  slurm (369)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 35 of 37
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 35 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[27/f8e96f] NFC…SALMON_QUANT (SRR17866841) | 20 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (369)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 35 of 37
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 35 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/ba3471] NFC…SALMON_QUANT (SRR17866828) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (370)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 35 of 37
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 35 of 35
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (370)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 36 of 37
[f5/cfcce4] NFC…SALMON_QUANT (SRR17866844) | 35 of 36
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (371)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 36 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 35 of 36
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (371)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[80/6d16d4] NFC…E:TRIMGALORE (SRR17866851) | 37 of 86
[13/58e337] NFC…TER_TRIMMING (SRR17866849) | 37 of 37
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 36 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 35 of 36
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (373)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[0f/ea233c] NFC…E:TRIMGALORE (SRR27320671) | 38 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 37 of 38
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 36 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 35 of 36
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (374)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/8005db] NFC…E:TRIMGALORE (SRR27320669) | 39 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 37 of 39
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 36 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 35 of 36
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (375)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/8005db] NFC…E:TRIMGALORE (SRR27320669) | 39 of 86
[85/edc257] NFC…TER_TRIMMING (SRR27320669) | 37 of 39
[42/bc0960] NFC…FQ_SUBSAMPLE (SRR17866851) | 36 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 35 of 36
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (375)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/8005db] NFC…E:TRIMGALORE (SRR27320669) | 39 of 86
[85/edc257] NFC…TER_TRIMMING (SRR27320669) | 37 of 39
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 37 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 35 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (376)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/8005db] NFC…E:TRIMGALORE (SRR27320669) | 39 of 86
[85/edc257] NFC…TER_TRIMMING (SRR27320669) | 37 of 39
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 37 of 37
[99/5aa2d1] NFC…SALMON_QUANT (SRR17866849) | 35 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (378)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 37 of 40
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 37 of 37
[99/5aa2d1] NFC…SALMON_QUANT (SRR17866849) | 35 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 35
Plus 30 more processes waiting for tasks…

executor >  slurm (378)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 37 of 40
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 37 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d4/22dfe1] NFC…SALMON_QUANT (SRR27320655) | 21 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (379)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 37 of 40
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 37 of 37
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[e1/b8eecc] NFC…SALMON_QUANT (SRR27320660) | 22 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (379)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[85/edc257] NFC…TER_TRIMMING (SRR27320669) | 38 of 40
[e6/2fa512] NFC…FQ_SUBSAMPLE (SRR17866849) | 37 of 38
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[e1/b8eecc] NFC…SALMON_QUANT (SRR27320660) | 22 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (380)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[85/edc257] NFC…TER_TRIMMING (SRR27320669) | 38 of 40
[b6/bab96a] NFC…FQ_SUBSAMPLE (SRR27320669) | 37 of 38
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[e1/b8eecc] NFC…SALMON_QUANT (SRR27320660) | 22 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (380)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[b6/bab96a] NFC…FQ_SUBSAMPLE (SRR27320669) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[e1/b8eecc] NFC…SALMON_QUANT (SRR27320660) | 22 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (381)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[e1/b8eecc] NFC…SALMON_QUANT (SRR27320660) | 22 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (381)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[2a/ba7ff3] NFC…SALMON_QUANT (SRR17866850) | 23 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (382)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7b/a44741] NFC…SALMON_QUANT (SRR17866839) | 23 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (382)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7b/a44741] NFC…SALMON_QUANT (SRR17866839) | 23 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (382)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[d0/7f8245] NFC…SALMON_QUANT (SRR17866852) | 24 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (383)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[fe/f249c2] NFC…SALMON_QUANT (SRR17866851) | 36 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9f/49166b] NFC…SALMON_QUANT (SRR17866853) | 24 of 36
Plus 30 more processes waiting for tasks…

executor >  slurm (383)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[99/5aa2d1] NFC…SALMON_QUANT (SRR17866849) | 37 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[9f/49166b] NFC…SALMON_QUANT (SRR17866853) | 24 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (384)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 37 of 39
[99/5aa2d1] NFC…SALMON_QUANT (SRR17866849) | 37 of 37
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (384)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[b6/bab96a] NFC…FQ_SUBSAMPLE (SRR27320669) | 38 of 39
[99/5aa2d1] NFC…SALMON_QUANT (SRR17866849) | 37 of 38
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (385)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[b6/bab96a] NFC…FQ_SUBSAMPLE (SRR27320669) | 38 of 39
[a3/2861d3] NFC…SALMON_QUANT (SRR27320669) | 37 of 38
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (385)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 39 of 39
[a3/2861d3] NFC…SALMON_QUANT (SRR27320669) | 37 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (386)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[24/4dcc97] NFC…TER_TRIMMING (SRR17866843) | 39 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 39 of 39
[81/47f6e7] NFC…SALMON_QUANT (SRR17866843) | 37 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (386)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e7/ff4bb4] NFC…FQ_SUBSAMPLE (SRR17866843) | 39 of 40
[81/47f6e7] NFC…SALMON_QUANT (SRR17866843) | 37 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (387)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 39 of 40
[81/47f6e7] NFC…SALMON_QUANT (SRR17866843) | 37 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 37
Plus 30 more processes waiting for tasks…

executor >  slurm (387)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 39 of 40
[a3/2861d3] NFC…SALMON_QUANT (SRR27320669) | 38 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8a/745cd3] NFC…SALMON_QUANT (SRR17866840) | 25 of 38
Plus 30 more processes waiting for tasks…

executor >  slurm (388)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 39 of 40
[a3/2861d3] NFC…SALMON_QUANT (SRR27320669) | 38 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 26 of 38
Plus 30 more processes waiting for tasks…

executor >  slurm (388)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 39 of 40
[a3/2861d3] NFC…SALMON_QUANT (SRR27320669) | 38 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 26 of 38
Plus 30 more processes waiting for tasks…

executor >  slurm (388)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 39 of 40
[a3/2861d3] NFC…SALMON_QUANT (SRR27320669) | 38 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 26 of 38
Plus 30 more processes waiting for tasks…

executor >  slurm (388)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 39 of 40
[81/47f6e7] NFC…SALMON_QUANT (SRR17866843) | 39 of 39
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 26 of 39
Plus 30 more processes waiting for tasks…

executor >  slurm (388)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[81/47f6e7] NFC…SALMON_QUANT (SRR17866843) | 39 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 26 of 39
Plus 30 more processes waiting for tasks…

executor >  slurm (389)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 39 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 26 of 39
Plus 30 more processes waiting for tasks…

executor >  slurm (390)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 39 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8e2ad0] NFC…SALMON_QUANT (SRR17866846) | 27 of 39
Plus 30 more processes waiting for tasks…

executor >  slurm (390)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 39 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8e2ad0] NFC…SALMON_QUANT (SRR17866846) | 27 of 39
Plus 30 more processes waiting for tasks…

executor >  slurm (390)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8e2ad0] NFC…SALMON_QUANT (SRR17866846) | 27 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (391)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[5a/978350] NFC…SALMON_QUANT (SRR17866848) | 28 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (391)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7b/a44741] NFC…SALMON_QUANT (SRR17866839) | 29 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (392)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[17/caece2] NFC…SALMON_QUANT (SRR17866844) | 29 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (393)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[56/229f47] NFC…SALMON_QUANT (SRR17866834) | 30 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (393)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 40 of 86
[f3/2f97f3] NFC…TER_TRIMMING (SRR17866838) | 40 of 40
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/132472] NFC…SALMON_QUANT (SRR17866856) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (396)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/65bb6c] NFC…E:TRIMGALORE (SRR27320658) | 41 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 40 of 41
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (396)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/65bb6c] NFC…E:TRIMGALORE (SRR27320658) | 41 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 40 of 41
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (397)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d1/02880e] NFC…E:TRIMGALORE (SRR27320678) | 42 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 40 of 42
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (398)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d1/02880e] NFC…E:TRIMGALORE (SRR27320678) | 42 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 40 of 42
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (399)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 43 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 40 of 43
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (400)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 43 of 86
[d0/f35773] NFC…TER_TRIMMING (SRR27320677) | 40 of 43
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 40
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (400)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 43 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 41 of 43
[e8/f13ca7] NFC…FQ_SUBSAMPLE (SRR17866838) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (401)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 43 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 41 of 43
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (401)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/132c90] NFC…E:TRIMGALORE (SRR27320677) | 43 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 41 of 43
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (401)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[89/cf83d0] NFC…E:TRIMGALORE (SRR17866855) | 44 of 86
[72/20bdd6] NFC…TER_TRIMMING (SRR27320658) | 41 of 44
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (403)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 44 of 86
[08/eb42a9] NFC…TER_TRIMMING (SRR17866855) | 41 of 44
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (404)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[63/82cff5] NFC…E:TRIMGALORE (SRR17866858) | 45 of 86
[08/eb42a9] NFC…TER_TRIMMING (SRR17866855) | 41 of 45
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (405)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[63/82cff5] NFC…E:TRIMGALORE (SRR17866858) | 45 of 86
[2e/d472e6] NFC…TER_TRIMMING (SRR17866858) | 41 of 45
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 40 of 41
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (408)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[8a/956a4a] NFC…E:TRIMGALORE (SRR17866857) | 46 of 86
[a6/94a963] NFC…TER_TRIMMING (SRR17866857) | 42 of 46
[8f/c98b60] NFC…FQ_SUBSAMPLE (SRR27320677) | 40 of 42
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (409)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[a6/94a963] NFC…TER_TRIMMING (SRR17866857) | 42 of 47
[8f/c98b60] NFC…FQ_SUBSAMPLE (SRR27320677) | 40 of 42
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (410)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[a5/d0f154] NFC…TER_TRIMMING (SRR27320656) | 42 of 47
[8f/c98b60] NFC…FQ_SUBSAMPLE (SRR27320677) | 40 of 42
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (410)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[8f/c98b60] NFC…FQ_SUBSAMPLE (SRR27320677) | 40 of 43
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (411)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[87/2f2dcc] NFC…FQ_SUBSAMPLE (SRR27320659) | 40 of 43
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 40
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (411)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[fc/b322c7] NFC…SALMON_QUANT (SRR17866838) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (412)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/ddf11b] NFC…SALMON_QUANT (SRR17866851) | 31 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (413)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (413)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (413)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 47 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 47
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (413)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[bc/56facf] NFC…E:TRIMGALORE (SRR27320665) | 48 of 86
[1e/10abee] NFC…TER_TRIMMING (SRR27320659) | 43 of 48
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (415)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/69460a] NFC…E:TRIMGALORE (SRR27320688) | 48 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 43 of 48
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (416)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 43 of 49
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (417)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[8a/e2b204] NFC…TER_TRIMMING (SRR27320670) | 43 of 49
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 40 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 40
Plus 30 more processes waiting for tasks…

executor >  slurm (417)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[8a/e2b204] NFC…TER_TRIMMING (SRR27320670) | 43 of 49
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 41 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 32 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (418)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[8a/e2b204] NFC…TER_TRIMMING (SRR27320670) | 43 of 49
[8f/696c24] NFC…FQ_SUBSAMPLE (SRR27320658) | 41 of 43
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 41 of 41
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/332614] NFC…SALMON_QUANT (SRR27320669) | 33 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (418)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[a5/d0f154] NFC…TER_TRIMMING (SRR27320656) | 46 of 49
[8f/c98b60] NFC…FQ_SUBSAMPLE (SRR27320677) | 42 of 46
[91/3737e3] NFC…SALMON_QUANT (SRR27320658) | 41 of 42
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/332614] NFC…SALMON_QUANT (SRR27320669) | 33 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (422)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[a5/d0f154] NFC…TER_TRIMMING (SRR27320656) | 46 of 49
[6d/2af5de] NFC…FQ_SUBSAMPLE (SRR27320656) | 42 of 46
[46/a424a4] NFC…SALMON_QUANT (SRR27320677) | 41 of 42
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/332614] NFC…SALMON_QUANT (SRR27320669) | 33 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (422)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[96/011f62] NFC…E:TRIMGALORE (SRR27320670) | 49 of 86
[08/eb42a9] NFC…TER_TRIMMING (SRR17866855) | 47 of 49
[6d/2af5de] NFC…FQ_SUBSAMPLE (SRR27320656) | 42 of 46
[46/a424a4] NFC…SALMON_QUANT (SRR27320677) | 41 of 42
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/332614] NFC…SALMON_QUANT (SRR27320669) | 33 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (426)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1b/cd3ab3] NFC…E:TRIMGALORE (SRR27320694) | 50 of 86
[5b/069e16] NFC…TER_TRIMMING (SRR27320667) | 47 of 50
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[66/332614] NFC…SALMON_QUANT (SRR27320669) | 33 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (427)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1b/cd3ab3] NFC…E:TRIMGALORE (SRR27320694) | 50 of 86
[5b/069e16] NFC…TER_TRIMMING (SRR27320667) | 47 of 50
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/6c1837] NFC…SALMON_QUANT (SRR17866843) | 34 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (427)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1b/cd3ab3] NFC…E:TRIMGALORE (SRR27320694) | 50 of 86
[5b/069e16] NFC…TER_TRIMMING (SRR27320667) | 47 of 50
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/6c1837] NFC…SALMON_QUANT (SRR17866843) | 34 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (427)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[27/49b3ff] NFC…E:TRIMGALORE (SRR27320661) | 51 of 86
[5b/069e16] NFC…TER_TRIMMING (SRR27320667) | 47 of 51
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/6c1837] NFC…SALMON_QUANT (SRR17866843) | 34 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (429)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 51 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 47 of 51
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/6c1837] NFC…SALMON_QUANT (SRR17866843) | 34 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (429)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9c/aaf25a] NFC…E:TRIMGALORE (SRR27320668) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 47 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/6c1837] NFC…SALMON_QUANT (SRR17866843) | 34 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (431)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 47 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/6c1837] NFC…SALMON_QUANT (SRR17866843) | 34 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (432)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 47 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 41 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 41
Plus 30 more processes waiting for tasks…

executor >  slurm (432)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 47 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[46/a424a4] NFC…SALMON_QUANT (SRR27320677) | 42 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 42
Plus 30 more processes waiting for tasks…

executor >  slurm (432)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 47 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 47
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (432)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[5b/069e16] NFC…TER_TRIMMING (SRR27320667) | 48 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 43 of 48
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (433)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[5b/069e16] NFC…TER_TRIMMING (SRR27320667) | 48 of 52
[b8/a96005] NFC…FQ_SUBSAMPLE (SRR27320667) | 43 of 48
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (433)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[8a/e2b204] NFC…TER_TRIMMING (SRR27320670) | 49 of 52
[b8/a96005] NFC…FQ_SUBSAMPLE (SRR27320667) | 43 of 49
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (434)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[8a/e2b204] NFC…TER_TRIMMING (SRR27320670) | 49 of 52
[8c/b0cc17] NFC…FQ_SUBSAMPLE (SRR27320670) | 43 of 49
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (434)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[8c/b0cc17] NFC…FQ_SUBSAMPLE (SRR27320670) | 43 of 50
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (435)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 43 of 50
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 43
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (435)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[b8/1f6239] NFC…SALMON_QUANT (SRR27320659) | 43 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (439)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[d2/3f9931] NFC…SALMON_QUANT (SRR17866855) | 43 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (439)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[d2/3f9931] NFC…SALMON_QUANT (SRR17866855) | 43 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 35 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (439)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[d2/3f9931] NFC…SALMON_QUANT (SRR17866855) | 43 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[56/229f47] NFC…SALMON_QUANT (SRR17866834) | 36 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (440)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[d2/3f9931] NFC…SALMON_QUANT (SRR17866855) | 43 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 43
Plus 30 more processes waiting for tasks…

executor >  slurm (440)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[a7/de63b2] NFC…SALMON_QUANT (SRR17866857) | 44 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 44
Plus 30 more processes waiting for tasks…

executor >  slurm (440)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[90/97b823] NFC…TER_TRIMMING (SRR27320665) | 50 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 50
[ca/f16b21] NFC…SALMON_QUANT (SRR27320656) | 45 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (440)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 51 of 52
[91/212825] NFC…FQ_SUBSAMPLE (SRR17866855) | 47 of 51
[ca/f16b21] NFC…SALMON_QUANT (SRR27320656) | 45 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (441)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 51 of 52
[8f/0f5087] NFC…FQ_SUBSAMPLE (SRR27320668) | 47 of 51
[ca/f16b21] NFC…SALMON_QUANT (SRR27320656) | 45 of 47
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (441)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 51 of 52
[b8/a96005] NFC…FQ_SUBSAMPLE (SRR27320667) | 49 of 51
[ca/f16b21] NFC…SALMON_QUANT (SRR27320656) | 45 of 49
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (443)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[3e/92fc9c] NFC…TER_TRIMMING (SRR27320668) | 51 of 52
[b8/a96005] NFC…FQ_SUBSAMPLE (SRR27320667) | 49 of 51
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 45 of 49
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (443)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[b8/a96005] NFC…FQ_SUBSAMPLE (SRR27320667) | 49 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 45 of 49
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (444)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 49 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 45 of 49
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (444)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 45 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[e9/07d8bf] NFC…SALMON_QUANT (SRR27320665) | 45 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[e9/07d8bf] NFC…SALMON_QUANT (SRR27320665) | 45 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[e9/07d8bf] NFC…SALMON_QUANT (SRR27320665) | 45 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 45
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[d2/3f9931] NFC…SALMON_QUANT (SRR17866855) | 46 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 46
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[ce/817933] NFC…SALMON_QUANT (SRR27320670) | 47 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 47
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8e/50ddec] NFC…FQ_SUBSAMPLE (SRR27320665) | 50 of 52
[03/f3940c] NFC…SALMON_QUANT (SRR17866858) | 48 of 50
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 48
Plus 30 more processes waiting for tasks…

executor >  slurm (445)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8f/0f5087] NFC…FQ_SUBSAMPLE (SRR27320668) | 51 of 52
[03/f3940c] NFC…SALMON_QUANT (SRR17866858) | 48 of 51
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 48
Plus 30 more processes waiting for tasks…

executor >  slurm (446)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[8f/0f5087] NFC…FQ_SUBSAMPLE (SRR27320668) | 51 of 52
[5a/89b6ca] NFC…SALMON_QUANT (SRR27320668) | 48 of 51
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 48
Plus 30 more processes waiting for tasks…

executor >  slurm (446)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[5a/89b6ca] NFC…SALMON_QUANT (SRR27320668) | 48 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 48
Plus 30 more processes waiting for tasks…

executor >  slurm (447)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 48 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 48
Plus 30 more processes waiting for tasks…

executor >  slurm (447)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 52 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 52
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 48 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 48
Plus 30 more processes waiting for tasks…

executor >  slurm (447)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[3a/e860ea] NFC…E:TRIMGALORE (SRR27320662) | 53 of 86
[11/eb8398] NFC…TER_TRIMMING (SRR27320661) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[5a/89b6ca] NFC…SALMON_QUANT (SRR27320668) | 50 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 50
Plus 30 more processes waiting for tasks…

executor >  slurm (449)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[5a/89b6ca] NFC…SALMON_QUANT (SRR27320668) | 50 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 50
Plus 30 more processes waiting for tasks…

executor >  slurm (449)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 51 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[c7/3ff4d1] NFC…SALMON_QUANT (SRR27320658) | 36 of 51
Plus 30 more processes waiting for tasks…

executor >  slurm (450)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 51 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 51
Plus 30 more processes waiting for tasks…

executor >  slurm (450)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 51 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 51
Plus 30 more processes waiting for tasks…

executor >  slurm (450)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[98/d75cbf] NFC…SALMON_QUANT (SRR27320667) | 51 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 51
Plus 30 more processes waiting for tasks…

executor >  slurm (450)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 52 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 52
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (450)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 53
[65/c19cab] NFC…FQ_SUBSAMPLE (SRR27320661) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (451)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 53
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (451)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 53
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8d/3b5ef5] NFC…SALMON_QUANT (SRR27320677) | 37 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (452)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 53
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[40/bcff74] NFC…SALMON_QUANT (SRR27320659) | 38 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (452)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 53
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[76/8903dc] NFC…SALMON_QUANT (SRR17866838) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (453)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 53 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 53
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (454)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[cb/b23f6a] NFC…E:TRIMGALORE (SRR27320657) | 54 of 86
[80/a932ce] NFC…TER_TRIMMING (SRR27320662) | 53 of 54
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (455)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[cb/b23f6a] NFC…E:TRIMGALORE (SRR27320657) | 54 of 86
[fc/83f598] NFC…TER_TRIMMING (SRR27320657) | 53 of 54
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (457)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[05/2abd16] NFC…E:TRIMGALORE (SRR27320676) | 55 of 86
[48/30fcda] NFC…TER_TRIMMING (SRR27320673) | 53 of 55
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (458)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[48/30fcda] NFC…TER_TRIMMING (SRR27320673) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (459)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (459)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f1/53748b] NFC…SALMON_QUANT (SRR17866857) | 39 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (459)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[0e/cbc21d] NFC…SALMON_QUANT (SRR17866849) | 40 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (460)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 52 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 52
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/728d09] NFC…SALMON_QUANT (SRR27320656) | 40 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (460)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 53 of 53
[99/8f5e31] NFC…SALMON_QUANT (SRR27320661) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/728d09] NFC…SALMON_QUANT (SRR27320656) | 40 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (461)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 53 of 53
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6e/728d09] NFC…SALMON_QUANT (SRR27320656) | 40 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (462)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 53 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 53 of 53
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (462)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 54 of 56
[a0/b9a960] NFC…FQ_SUBSAMPLE (SRR27320662) | 53 of 54
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (463)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[ac/d84434] NFC…TER_TRIMMING (SRR27320671) | 54 of 56
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 53 of 54
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (463)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[48/30fcda] NFC…TER_TRIMMING (SRR27320673) | 55 of 56
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 53 of 55
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (464)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[48/30fcda] NFC…TER_TRIMMING (SRR27320673) | 55 of 56
[cf/3d4518] NFC…FQ_SUBSAMPLE (SRR27320673) | 53 of 55
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (464)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[48/30fcda] NFC…TER_TRIMMING (SRR27320673) | 55 of 56
[cf/3d4518] NFC…FQ_SUBSAMPLE (SRR27320673) | 53 of 55
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (464)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[48/30fcda] NFC…TER_TRIMMING (SRR27320673) | 55 of 56
[cf/3d4518] NFC…FQ_SUBSAMPLE (SRR27320673) | 53 of 55
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (464)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 56 of 86
[fc/83f598] NFC…TER_TRIMMING (SRR27320657) | 56 of 56
[cf/3d4518] NFC…FQ_SUBSAMPLE (SRR27320673) | 53 of 56
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (466)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[fc/83f598] NFC…TER_TRIMMING (SRR27320657) | 56 of 57
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 53 of 56
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (467)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 53 of 56
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/f3be92] NFC…SALMON_QUANT (SRR17866855) | 41 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (468)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 53 of 56
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 52 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 52
Plus 30 more processes waiting for tasks…

executor >  slurm (468)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 53 of 56
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 53 of 53
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (468)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[cf/3d4518] NFC…FQ_SUBSAMPLE (SRR27320673) | 54 of 56
[7a/dcf228] NFC…SALMON_QUANT (SRR27320662) | 53 of 54
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (469)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[cf/3d4518] NFC…FQ_SUBSAMPLE (SRR27320673) | 54 of 56
[d0/f5e7c7] NFC…SALMON_QUANT (SRR27320673) | 53 of 54
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (469)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[d0/f5e7c7] NFC…SALMON_QUANT (SRR27320673) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (470)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (470)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 57 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 57
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (471)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 56 of 58
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (472)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 56 of 58
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (472)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 56 of 58
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (472)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 56 of 58
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 53 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 53
Plus 30 more processes waiting for tasks…

executor >  slurm (472)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 56 of 58
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 56
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (472)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 57 of 58
[3a/b98986] NFC…FQ_SUBSAMPLE (SRR27320671) | 55 of 57
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (473)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 57 of 58
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 55 of 57
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[54/066874] NFC…SALMON_QUANT (SRR27320670) | 42 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (473)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 57 of 58
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 55 of 57
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[40/bcff74] NFC…SALMON_QUANT (SRR27320659) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (474)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[06/7f0405] NFC…E:TRIMGALORE (SRR27320674) | 58 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 57 of 58
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 55 of 57
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 55
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[15/c10477] NFC…SALMON_QUANT (SRR17866858) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (474)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 59 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 57 of 58
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 56 of 57
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[15/c10477] NFC…SALMON_QUANT (SRR17866858) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (474)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[a8/305e2a] NFC…E:TRIMGALORE (SRR17866835) | 59 of 86
[0d/e73e7a] NFC…TER_TRIMMING (SRR27320674) | 57 of 59
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 56 of 57
[8a/221b1f] NFC…SALMON_QUANT (SRR27320671) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[15/c10477] NFC…SALMON_QUANT (SRR17866858) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (477)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[69/d98ae6] NFC…TER_TRIMMING (SRR17866835) | 57 of 59
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 56 of 57
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[15/c10477] NFC…SALMON_QUANT (SRR17866858) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (477)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[11/95f627] NFC…FQ_SUBSAMPLE (SRR27320657) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[15/c10477] NFC…SALMON_QUANT (SRR17866858) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (478)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[15/c10477] NFC…SALMON_QUANT (SRR17866858) | 43 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (479)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/d53c6f] NFC…SALMON_QUANT (SRR27320668) | 44 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (479)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/d53c6f] NFC…SALMON_QUANT (SRR27320668) | 44 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (479)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[cd/d53c6f] NFC…SALMON_QUANT (SRR27320668) | 44 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (480)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 55 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 55
Plus 30 more processes waiting for tasks…

executor >  slurm (480)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 59 of 86
[73/54b2dd] NFC…TER_TRIMMING (SRR27320664) | 58 of 59
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 56 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (482)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 56 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 56 of 56
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (482)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 57 of 58
[c7/54de0d] NFC…SALMON_QUANT (SRR27320657) | 56 of 57
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (483)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 57 of 58
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 56 of 57
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (483)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 57 of 58
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 56 of 57
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (483)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[37/a85429] NFC…FQ_SUBSAMPLE (SRR27320674) | 57 of 58
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 56 of 57
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (483)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 58 of 58
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 56 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (484)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 58 of 58
[f1/5c1e61] NFC…SALMON_QUANT (SRR27320664) | 56 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 56
Plus 30 more processes waiting for tasks…

executor >  slurm (484)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 58 of 60
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 58 of 58
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (484)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 59 of 60
[1a/a32f68] NFC…FQ_SUBSAMPLE (SRR27320664) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (485)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 59 of 60
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[63/834a74] NFC…SALMON_QUANT (SRR27320665) | 45 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (486)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 59 of 60
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[2d/64420a] NFC…SALMON_QUANT (SRR27320667) | 46 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (487)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/c6f5cd] NFC…E:TRIMGALORE (SRR27320680) | 60 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 59 of 60
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (488)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[39/2d54be] NFC…TER_TRIMMING (SRR27320680) | 59 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (489)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 59 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (489)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 59 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 59
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (489)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[69/d98ae6] NFC…TER_TRIMMING (SRR17866835) | 60 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 58 of 60
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (490)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[69/d98ae6] NFC…TER_TRIMMING (SRR17866835) | 60 of 61
[e4/d8e735] NFC…FQ_SUBSAMPLE (SRR17866835) | 58 of 60
[02/0d90e4] NFC…SALMON_QUANT (SRR27320674) | 57 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 57
Plus 30 more processes waiting for tasks…

executor >  slurm (490)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[69/d98ae6] NFC…TER_TRIMMING (SRR17866835) | 60 of 61
[e4/d8e735] NFC…FQ_SUBSAMPLE (SRR17866835) | 58 of 60
[f1/5c1e61] NFC…SALMON_QUANT (SRR27320664) | 58 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 58
Plus 30 more processes waiting for tasks…

executor >  slurm (490)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[e4/d8e735] NFC…FQ_SUBSAMPLE (SRR17866835) | 58 of 61
[f1/5c1e61] NFC…SALMON_QUANT (SRR27320664) | 58 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 58
Plus 30 more processes waiting for tasks…

executor >  slurm (491)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 58 of 61
[f1/5c1e61] NFC…SALMON_QUANT (SRR27320664) | 58 of 58
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 58
Plus 30 more processes waiting for tasks…

executor >  slurm (491)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[f1/5c1e61] NFC…SALMON_QUANT (SRR27320664) | 58 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 58
Plus 30 more processes waiting for tasks…

executor >  slurm (492)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 58 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 58
Plus 30 more processes waiting for tasks…

executor >  slurm (492)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 58 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 58
Plus 30 more processes waiting for tasks…

executor >  slurm (492)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 47 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (493)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f0/f96720] NFC…SALMON_QUANT (SRR27320662) | 48 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (493)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[9d/08b234] NFC…E:TRIMGALORE (SRR27320679) | 61 of 86
[0c/b2f888] NFC…TER_TRIMMING (SRR27320679) | 61 of 61
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f0/f96720] NFC…SALMON_QUANT (SRR27320662) | 48 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (495)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 62 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 62
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f0/f96720] NFC…SALMON_QUANT (SRR27320662) | 48 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (495)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 62 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 62
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f0/f96720] NFC…SALMON_QUANT (SRR27320662) | 48 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (496)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 62 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 62
[d7/6b669d] NFC…FQ_SUBSAMPLE (SRR27320680) | 59 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 59
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (496)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 62 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 62
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 60 of 61
[a5/6d1641] NFC…SALMON_QUANT (SRR27320680) | 59 of 60
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (497)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 62 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 62
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 60 of 61
[2c/4a86a1] NFC…SALMON_QUANT (SRR27320679) | 59 of 60
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (497)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 62 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 62
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 60 of 61
[2c/4a86a1] NFC…SALMON_QUANT (SRR27320679) | 59 of 60
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (497)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/4e7bfd] NFC…E:TRIMGALORE (SRR27320686) | 63 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 61 of 63
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 60 of 61
[2c/4a86a1] NFC…SALMON_QUANT (SRR27320679) | 59 of 60
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (499)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 61 of 63
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 60 of 61
[2c/4a86a1] NFC…SALMON_QUANT (SRR27320679) | 59 of 60
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 59
Plus 30 more processes waiting for tasks…

executor >  slurm (499)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 61 of 63
[ac/ab42a3] NFC…FQ_SUBSAMPLE (SRR27320679) | 60 of 61
[2c/4a86a1] NFC…SALMON_QUANT (SRR27320679) | 60 of 60
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (499)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 61 of 63
[e4/d8e735] NFC…FQ_SUBSAMPLE (SRR17866835) | 61 of 61
[2c/4a86a1] NFC…SALMON_QUANT (SRR27320679) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (500)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 61 of 63
[e4/d8e735] NFC…FQ_SUBSAMPLE (SRR17866835) | 61 of 61
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (500)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 62 of 63
[e4/d8e735] NFC…FQ_SUBSAMPLE (SRR17866835) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (501)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 62 of 63
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7c/193f66] NFC…SALMON_QUANT (SRR27320671) | 49 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (501)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 62 of 63
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[62/fabc8b] NFC…SALMON_QUANT (SRR27320661) | 51 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (502)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 62 of 63
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[99/3ea36d] NFC…SALMON_QUANT (SRR27320673) | 51 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (503)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 63 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 62 of 63
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[91/c5facf] NFC…SALMON_QUANT (SRR27320657) | 51 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (503)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[40/69460a] NFC…E:TRIMGALORE (SRR27320688) | 64 of 86
[3d/3d9402] NFC…TER_TRIMMING (SRR27320672) | 62 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[91/c5facf] NFC…SALMON_QUANT (SRR27320657) | 51 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (505)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 62 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[91/c5facf] NFC…SALMON_QUANT (SRR27320657) | 51 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (505)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 62 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[2d/64420a] NFC…SALMON_QUANT (SRR27320667) | 52 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (506)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 62 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 60 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 60
Plus 30 more processes waiting for tasks…

executor >  slurm (506)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 62 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 62
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 61 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (506)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 63 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 61 of 63
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 61 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (507)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 63 of 64
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 61 of 63
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 61 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (507)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 63 of 64
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 61 of 63
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 61 of 61
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (507)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 63 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 63
[97/0edf78] NFC…SALMON_QUANT (SRR17866835) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (508)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 64 of 86
[ae/f1ee5a] NFC…TER_TRIMMING (SRR27320686) | 63 of 64
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 63
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (510)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 65 of 86
[8e/d1c471] NFC…TER_TRIMMING (SRR27320694) | 63 of 65
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 63
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (512)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 66 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 63 of 66
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 63
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (512)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 63 of 67
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 63
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (513)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[0d/98b6a1] NFC…TER_TRIMMING (SRR27320684) | 63 of 67
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 63
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (513)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 64 of 67
[c1/687fb4] NFC…FQ_SUBSAMPLE (SRR27320672) | 62 of 64
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (514)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 64 of 67
[15/23a368] NFC…FQ_SUBSAMPLE (SRR27320688) | 62 of 64
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 62
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (514)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 64 of 67
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 64
[60/f8b806] NFC…SALMON_QUANT (SRR27320672) | 61 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (515)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 64 of 67
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 64
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 61 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (515)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[69/e9d171] NFC…E:TRIMGALORE (SRR27320684) | 67 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 64 of 67
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 64
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 61 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (515)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[0f/5114e1] NFC…TER_TRIMMING (SRR27320688) | 64 of 68
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 64
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 61 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (516)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[0c/442c9a] NFC…TER_TRIMMING (SRR27320681) | 64 of 68
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 64
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 61 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 61
Plus 30 more processes waiting for tasks…

executor >  slurm (516)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[0c/442c9a] NFC…TER_TRIMMING (SRR27320681) | 64 of 68
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 64
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 63 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (516)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[0d/98b6a1] NFC…TER_TRIMMING (SRR27320684) | 65 of 68
[e0/22037f] NFC…FQ_SUBSAMPLE (SRR27320686) | 63 of 65
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 63 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (517)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[0d/98b6a1] NFC…TER_TRIMMING (SRR27320684) | 65 of 68
[a5/0998b5] NFC…FQ_SUBSAMPLE (SRR27320684) | 63 of 65
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 63 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (517)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[8e/d1c471] NFC…TER_TRIMMING (SRR27320694) | 66 of 68
[a5/0998b5] NFC…FQ_SUBSAMPLE (SRR27320684) | 63 of 66
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 63 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (518)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[8e/d1c471] NFC…TER_TRIMMING (SRR27320694) | 66 of 68
[ac/0632fe] NFC…FQ_SUBSAMPLE (SRR27320694) | 63 of 66
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 63 of 63
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (518)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[8e/d1c471] NFC…TER_TRIMMING (SRR27320694) | 66 of 68
[15/23a368] NFC…FQ_SUBSAMPLE (SRR27320688) | 64 of 66
[a3/b7957b] NFC…SALMON_QUANT (SRR27320686) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (519)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[8e/d1c471] NFC…TER_TRIMMING (SRR27320694) | 66 of 68
[15/23a368] NFC…FQ_SUBSAMPLE (SRR27320688) | 64 of 66
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (519)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 67 of 68
[15/23a368] NFC…FQ_SUBSAMPLE (SRR27320688) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (520)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 67 of 68
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (520)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 67 of 68
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 52 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (521)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[b4/079c69] NFC…E:TRIMGALORE (SRR27320681) | 68 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 67 of 68
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (521)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 69 of 86
[5a/b98773] NFC…TER_TRIMMING (SRR27320678) | 67 of 69
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (522)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 69 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 67 of 69
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 63 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 63
Plus 30 more processes waiting for tasks…

executor >  slurm (522)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[01/b55dcd] NFC…E:TRIMGALORE (SRR27320691) | 69 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 67 of 69
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 67
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 64 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (522)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[0c/442c9a] NFC…TER_TRIMMING (SRR27320681) | 68 of 70
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 64 of 68
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 64 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (524)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[3d/f4858d] NFC…FQ_SUBSAMPLE (SRR27320681) | 64 of 68
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 64 of 64
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (524)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[ac/0632fe] NFC…FQ_SUBSAMPLE (SRR27320694) | 65 of 68
[4e/d6b5b9] NFC…SALMON_QUANT (SRR27320688) | 64 of 65
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (525)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[ac/0632fe] NFC…FQ_SUBSAMPLE (SRR27320694) | 65 of 68
[a0/3b61f5] NFC…SALMON_QUANT (SRR27320694) | 64 of 65
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (525)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[a5/0998b5] NFC…FQ_SUBSAMPLE (SRR27320684) | 66 of 68
[a0/3b61f5] NFC…SALMON_QUANT (SRR27320694) | 64 of 66
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (526)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[a5/0998b5] NFC…FQ_SUBSAMPLE (SRR27320684) | 66 of 68
[a9/3bce6d] NFC…SALMON_QUANT (SRR27320684) | 64 of 66
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (526)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 67 of 68
[a9/3bce6d] NFC…SALMON_QUANT (SRR27320684) | 64 of 67
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (527)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 67 of 68
[88/3810cb] NFC…SALMON_QUANT (SRR27320678) | 64 of 67
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 53 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (527)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 67 of 68
[a0/3b61f5] NFC…SALMON_QUANT (SRR27320694) | 65 of 67
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f0/f96720] NFC…SALMON_QUANT (SRR27320662) | 54 of 64
Plus 30 more processes waiting for tasks…

executor >  slurm (528)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 68 of 70
[a5/d209e4] NFC…FQ_SUBSAMPLE (SRR27320678) | 67 of 68
[a0/3b61f5] NFC…SALMON_QUANT (SRR27320694) | 65 of 67
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[18/5f08db] NFC…SALMON_QUANT (SRR27320680) | 54 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (528)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[3d/f4858d] NFC…FQ_SUBSAMPLE (SRR27320681) | 68 of 69
[a0/3b61f5] NFC…SALMON_QUANT (SRR27320694) | 65 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[18/5f08db] NFC…SALMON_QUANT (SRR27320680) | 54 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (529)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 69
[a0/3b61f5] NFC…SALMON_QUANT (SRR27320694) | 65 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[18/5f08db] NFC…SALMON_QUANT (SRR27320680) | 54 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (530)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 69
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 65 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[18/5f08db] NFC…SALMON_QUANT (SRR27320680) | 54 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (530)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 69
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 65 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1c/e60b73] NFC…SALMON_QUANT (SRR27320674) | 55 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (531)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 69
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 65 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7b/75f701] NFC…SALMON_QUANT (SRR27320679) | 55 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (531)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 69
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 65 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7b/75f701] NFC…SALMON_QUANT (SRR27320679) | 55 of 65
Plus 30 more processes waiting for tasks…

executor >  slurm (532)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[36/db028b] NFC…TER_TRIMMING (SRR27320691) | 69 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 69
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 66 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[96/102247] NFC…SALMON_QUANT (SRR17866835) | 56 of 66
Plus 30 more processes waiting for tasks…

executor >  slurm (532)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 70 of 70
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 68 of 70
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 66 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[96/102247] NFC…SALMON_QUANT (SRR17866835) | 56 of 66
Plus 30 more processes waiting for tasks…

executor >  slurm (533)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 70 of 70
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 68 of 70
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 66 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[96/102247] NFC…SALMON_QUANT (SRR17866835) | 56 of 66
Plus 30 more processes waiting for tasks…

executor >  slurm (534)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 70 of 70
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 68 of 70
[5e/1091df] NFC…SALMON_QUANT (SRR27320681) | 66 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 66
Plus 30 more processes waiting for tasks…

executor >  slurm (534)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[28/62f139] NFC…E:TRIMGALORE (SRR17866854) | 70 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 70 of 70
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 68 of 70
[a9/3bce6d] NFC…SALMON_QUANT (SRR27320684) | 67 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (534)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6f/de172d] NFC…E:TRIMGALORE (SRR27320663) | 71 of 86
[ea/bc4629] NFC…TER_TRIMMING (SRR17866854) | 70 of 71
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 68 of 70
[a9/3bce6d] NFC…SALMON_QUANT (SRR27320684) | 67 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (535)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6f/de172d] NFC…E:TRIMGALORE (SRR27320663) | 71 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 70 of 71
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 68 of 70
[a9/3bce6d] NFC…SALMON_QUANT (SRR27320684) | 67 of 68
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (535)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6f/de172d] NFC…E:TRIMGALORE (SRR27320663) | 71 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 70 of 71
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[a9/3bce6d] NFC…SALMON_QUANT (SRR27320684) | 67 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (536)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6f/de172d] NFC…E:TRIMGALORE (SRR27320663) | 71 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 70 of 71
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 67 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (536)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6f/de172d] NFC…E:TRIMGALORE (SRR27320663) | 71 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 70 of 71
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 67 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (536)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6f/de172d] NFC…E:TRIMGALORE (SRR27320663) | 71 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 70 of 71
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 67 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (536)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 70 of 72
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 67 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (537)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[c2/c1be89] NFC…TER_TRIMMING (SRR27320683) | 70 of 72
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 67 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 67
Plus 30 more processes waiting for tasks…

executor >  slurm (537)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[c2/c1be89] NFC…TER_TRIMMING (SRR27320683) | 70 of 72
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[88/3810cb] NFC…SALMON_QUANT (SRR27320678) | 68 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 68
Plus 30 more processes waiting for tasks…

executor >  slurm (537)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[c2/c1be89] NFC…TER_TRIMMING (SRR27320683) | 70 of 72
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 70
[88/3810cb] NFC…SALMON_QUANT (SRR27320678) | 68 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 68
Plus 30 more processes waiting for tasks…

executor >  slurm (537)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 71 of 72
[ed/13220c] NFC…FQ_SUBSAMPLE (SRR27320691) | 69 of 71
[88/3810cb] NFC…SALMON_QUANT (SRR27320678) | 68 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 68
Plus 30 more processes waiting for tasks…

executor >  slurm (538)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 71 of 72
[4e/3ff183] NFC…FQ_SUBSAMPLE (SRR27320663) | 69 of 71
[88/3810cb] NFC…SALMON_QUANT (SRR27320678) | 68 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 68
Plus 30 more processes waiting for tasks…

executor >  slurm (538)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 71 of 72
[4e/3ff183] NFC…FQ_SUBSAMPLE (SRR27320663) | 69 of 71
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 69 of 69
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (538)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 71 of 72
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 70 of 71
[bc/4abb7f] NFC…SALMON_QUANT (SRR27320691) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (539)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[d0/079d07] NFC…E:TRIMGALORE (SRR27320683) | 72 of 86
[7b/829925] NFC…TER_TRIMMING (SRR27320663) | 71 of 72
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 70 of 71
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (539)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c4/42db76] NFC…E:TRIMGALORE (SRR27320689) | 73 of 86
[c2/c1be89] NFC…TER_TRIMMING (SRR27320683) | 72 of 73
[6d/81a983] NFC…FQ_SUBSAMPLE (SRR17866854) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (541)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c4/42db76] NFC…E:TRIMGALORE (SRR27320689) | 73 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 72 of 73
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (541)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (542)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 57 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (543)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[21/a3bd04] NFC…SALMON_QUANT (SRR27320672) | 58 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (543)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[21/a3bd04] NFC…SALMON_QUANT (SRR27320672) | 58 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (543)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/70a9ee] NFC…SALMON_QUANT (SRR27320664) | 59 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (544)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 69 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[ef/3dd341] NFC…SALMON_QUANT (SRR27320688) | 59 of 69
Plus 30 more processes waiting for tasks…

executor >  slurm (544)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 70 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[ef/3dd341] NFC…SALMON_QUANT (SRR27320688) | 59 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (544)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 70 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7b/75f701] NFC…SALMON_QUANT (SRR27320679) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (545)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 72 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 72
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 70 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (545)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 73 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 70 of 73
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 70 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (546)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 73 of 74
[25/5683d2] NFC…FQ_SUBSAMPLE (SRR27320689) | 70 of 73
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 70 of 70
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (546)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 73 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 71 of 73
[e4/38d614] NFC…SALMON_QUANT (SRR17866854) | 70 of 71
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (547)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[79/7fae01] NFC…E:TRIMGALORE (SRR27320666) | 74 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 73 of 74
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 71 of 73
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 70 of 71
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (547)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[50/27e6a3] NFC…TER_TRIMMING (SRR27320689) | 73 of 75
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 71 of 73
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 70 of 71
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (548)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 73 of 75
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 71 of 73
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 70 of 71
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (548)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 73 of 75
[65/13d04a] NFC…FQ_SUBSAMPLE (SRR27320683) | 71 of 73
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 70 of 71
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (548)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 73 of 75
[4e/3ff183] NFC…FQ_SUBSAMPLE (SRR27320663) | 72 of 73
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 70 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (549)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 73 of 75
[4e/3ff183] NFC…FQ_SUBSAMPLE (SRR27320663) | 72 of 73
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 70 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (549)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 74 of 75
[4e/3ff183] NFC…FQ_SUBSAMPLE (SRR27320663) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 70 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (550)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 74 of 75
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 70 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 70
Plus 30 more processes waiting for tasks…

executor >  slurm (550)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 74 of 75
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 71 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 71
Plus 30 more processes waiting for tasks…

executor >  slurm (550)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 74 of 75
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c0/149b0f] NFC…SALMON_QUANT (SRR27320683) | 71 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 71
Plus 30 more processes waiting for tasks…

executor >  slurm (550)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[4e/d7d934] NFC…E:TRIMGALORE (SRR27320692) | 75 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 74 of 75
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (550)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[05/2abd16] NFC…E:TRIMGALORE (SRR27320676) | 76 of 86
[8a/6f3563] NFC…TER_TRIMMING (SRR27320666) | 74 of 76
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (551)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[05/2abd16] NFC…E:TRIMGALORE (SRR27320676) | 76 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 74 of 76
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (551)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 74 of 77
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (552)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[7a/b5b053] NFC…TER_TRIMMING (SRR27320685) | 74 of 77
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 74
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (552)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 72 of 75
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (553)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[0d/b20d0b] NFC…FQ_SUBSAMPLE (SRR27320692) | 72 of 75
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[77/bd36d4] NFC…SALMON_QUANT (SRR27320694) | 60 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (553)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[0d/b20d0b] NFC…FQ_SUBSAMPLE (SRR27320692) | 72 of 75
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[60/9931ad] NFC…SALMON_QUANT (SRR27320686) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (554)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[0d/b20d0b] NFC…FQ_SUBSAMPLE (SRR27320692) | 72 of 75
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 72
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (554)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[25/5683d2] NFC…FQ_SUBSAMPLE (SRR27320689) | 73 of 75
[c1/39990f] NFC…SALMON_QUANT (SRR27320663) | 72 of 73
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (555)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[25/5683d2] NFC…FQ_SUBSAMPLE (SRR27320689) | 73 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 72 of 73
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (555)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[25/5683d2] NFC…FQ_SUBSAMPLE (SRR27320689) | 73 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 72 of 73
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (555)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 74 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 72 of 74
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (556)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 74 of 75
[a2/f550b0] NFC…SALMON_QUANT (SRR27320666) | 72 of 74
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 72
Plus 30 more processes waiting for tasks…

executor >  slurm (556)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[2d/cfe7f0] NFC…E:TRIMGALORE (SRR27320685) | 77 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 77
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 74 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 73 of 74
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (556)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[63/9fa5fa] NFC…TER_TRIMMING (SRR27320692) | 75 of 78
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 74 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 73 of 74
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (557)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 75 of 78
[8c/52db89] NFC…FQ_SUBSAMPLE (SRR27320666) | 74 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 73 of 74
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (557)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 75 of 78
[0d/b20d0b] NFC…FQ_SUBSAMPLE (SRR27320692) | 75 of 75
[ee/e8f8cc] NFC…SALMON_QUANT (SRR27320689) | 73 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (558)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 75 of 78
[0d/b20d0b] NFC…FQ_SUBSAMPLE (SRR27320692) | 75 of 75
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 73 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (558)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 77 of 78
[0d/b20d0b] NFC…FQ_SUBSAMPLE (SRR27320692) | 75 of 77
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 73 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (560)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 77 of 78
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 73 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (560)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 77 of 78
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 73 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 73
Plus 30 more processes waiting for tasks…

executor >  slurm (560)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[14/070eef] NFC…E:TRIMGALORE (SRR27320675) | 78 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 77 of 78
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[a2/f550b0] NFC…SALMON_QUANT (SRR27320666) | 74 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 74
Plus 30 more processes waiting for tasks…

executor >  slurm (560)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[bc/4a0594] NFC…TER_TRIMMING (SRR27320676) | 77 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[a2/f550b0] NFC…SALMON_QUANT (SRR27320666) | 74 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 74
Plus 30 more processes waiting for tasks…

executor >  slurm (561)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 77 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[a2/f550b0] NFC…SALMON_QUANT (SRR27320666) | 74 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 74
Plus 30 more processes waiting for tasks…

executor >  slurm (561)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 77 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 75 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 61 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (561)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 77 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 75 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[96/102247] NFC…SALMON_QUANT (SRR17866835) | 62 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (562)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 77 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 77
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 75 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[bd/0d9b55] NFC…SALMON_QUANT (SRR27320684) | 62 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (562)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 75 of 78
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 75 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[bd/0d9b55] NFC…SALMON_QUANT (SRR27320684) | 62 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (563)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[4d/d53e95] NFC…FQ_SUBSAMPLE (SRR27320675) | 75 of 78
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 75 of 75
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[bd/0d9b55] NFC…SALMON_QUANT (SRR27320684) | 62 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (563)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 76 of 78
[d2/361354] NFC…SALMON_QUANT (SRR27320692) | 75 of 76
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[21/a3bd04] NFC…SALMON_QUANT (SRR27320672) | 63 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (565)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[4b/756267] NFC…FQ_SUBSAMPLE (SRR27320676) | 76 of 78
[ce/c19c2f] NFC…SALMON_QUANT (SRR27320676) | 75 of 76
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/213670] NFC…SALMON_QUANT (SRR27320678) | 63 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (565)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[d8/f39532] NFC…FQ_SUBSAMPLE (SRR27320685) | 77 of 78
[ce/c19c2f] NFC…SALMON_QUANT (SRR27320676) | 75 of 77
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/213670] NFC…SALMON_QUANT (SRR27320678) | 63 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (566)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[d8/f39532] NFC…FQ_SUBSAMPLE (SRR27320685) | 77 of 78
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 75 of 77
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/213670] NFC…SALMON_QUANT (SRR27320678) | 63 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (567)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[42/f60fd9] NFC…TER_TRIMMING (SRR27320675) | 78 of 79
[d8/f39532] NFC…FQ_SUBSAMPLE (SRR27320685) | 77 of 78
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 75 of 77
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (567)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[d8/f39532] NFC…FQ_SUBSAMPLE (SRR27320685) | 77 of 79
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 75 of 77
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (568)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 77 of 79
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 75 of 77
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (568)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[4d/d53e95] NFC…FQ_SUBSAMPLE (SRR27320675) | 78 of 79
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 75 of 78
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (569)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[4d/d53e95] NFC…FQ_SUBSAMPLE (SRR27320675) | 78 of 79
[81/99a474] NFC…SALMON_QUANT (SRR27320675) | 75 of 78
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 75
Plus 30 more processes waiting for tasks…

executor >  slurm (569)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[4d/d53e95] NFC…FQ_SUBSAMPLE (SRR27320675) | 78 of 79
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 77 of 78
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 77
Plus 30 more processes waiting for tasks…

executor >  slurm (569)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[2d/0d239f] NFC…SALMON_QUANT (SRR27320685) | 77 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 77
Plus 30 more processes waiting for tasks…

executor >  slurm (570)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 77 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 77
Plus 30 more processes waiting for tasks…

executor >  slurm (570)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 77 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 64 of 77
Plus 30 more processes waiting for tasks…

executor >  slurm (571)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 77 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8e/42b83a] NFC…SALMON_QUANT (SRR17866854) | 65 of 77
Plus 30 more processes waiting for tasks…

executor >  slurm (571)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[1e/b30450] NFC…E:TRIMGALORE (SRR27320698) | 79 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 79
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8e/42b83a] NFC…SALMON_QUANT (SRR17866854) | 65 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (571)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 80 of 86
[c5/eeb183] NFC…TER_TRIMMING (SRR27320698) | 79 of 80
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8e/42b83a] NFC…SALMON_QUANT (SRR17866854) | 65 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (572)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 80 of 86
[38/cc5d2f] NFC…TER_TRIMMING (SRR27320682) | 79 of 80
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8e/42b83a] NFC…SALMON_QUANT (SRR17866854) | 65 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (572)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 80 of 86
[38/cc5d2f] NFC…TER_TRIMMING (SRR27320682) | 79 of 80
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8e/42b83a] NFC…SALMON_QUANT (SRR17866854) | 65 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (573)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[86/d8f4c7] NFC…E:TRIMGALORE (SRR27320682) | 80 of 86
[38/cc5d2f] NFC…TER_TRIMMING (SRR27320682) | 79 of 80
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (573)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 81 of 86
[38/cc5d2f] NFC…TER_TRIMMING (SRR27320682) | 79 of 81
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (574)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[e0/9902cc] NFC…E:TRIMGALORE (SRR27320695) | 81 of 86
[04/c45c1f] NFC…TER_TRIMMING (SRR27320695) | 79 of 81
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (574)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[04/c45c1f] NFC…TER_TRIMMING (SRR27320695) | 79 of 82
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (575)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 79 of 82
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (575)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 79 of 82
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 79
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (575)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[38/cc5d2f] NFC…TER_TRIMMING (SRR27320682) | 80 of 82
[5b/d27acc] NFC…FQ_SUBSAMPLE (SRR27320698) | 79 of 80
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (576)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[38/cc5d2f] NFC…TER_TRIMMING (SRR27320682) | 80 of 82
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 79 of 80
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (576)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[04/c45c1f] NFC…TER_TRIMMING (SRR27320695) | 81 of 82
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 79 of 81
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (577)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[04/c45c1f] NFC…TER_TRIMMING (SRR27320695) | 81 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 79 of 81
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1f/a1cc40] NFC…SALMON_QUANT (SRR27320681) | 66 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (578)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[04/c45c1f] NFC…TER_TRIMMING (SRR27320695) | 81 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 79 of 81
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a3/beb142] NFC…SALMON_QUANT (SRR27320663) | 67 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (578)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[04/c45c1f] NFC…TER_TRIMMING (SRR27320695) | 81 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 79 of 81
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a3/beb142] NFC…SALMON_QUANT (SRR27320663) | 67 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (578)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 79 of 82
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a3/beb142] NFC…SALMON_QUANT (SRR27320663) | 67 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (579)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[29/767f8e] NFC…FQ_SUBSAMPLE (SRR27320687) | 79 of 82
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 79
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a3/beb142] NFC…SALMON_QUANT (SRR27320663) | 67 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (579)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 80 of 82
[28/0b88f1] NFC…SALMON_QUANT (SRR27320698) | 79 of 80
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a3/beb142] NFC…SALMON_QUANT (SRR27320663) | 67 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (580)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 80 of 82
[6d/9385bf] NFC…SALMON_QUANT (SRR27320695) | 79 of 80
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a3/beb142] NFC…SALMON_QUANT (SRR27320663) | 67 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (580)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 80 of 82
[6d/9385bf] NFC…SALMON_QUANT (SRR27320695) | 79 of 80
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f6/213670] NFC…SALMON_QUANT (SRR27320678) | 68 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (581)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[91/86588a] NFC…FQ_SUBSAMPLE (SRR27320695) | 80 of 82
[6d/9385bf] NFC…SALMON_QUANT (SRR27320695) | 79 of 80
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[97/815e3b] NFC…SALMON_QUANT (SRR27320689) | 68 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (581)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[6d/9385bf] NFC…SALMON_QUANT (SRR27320695) | 79 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[a5/4ecb86] NFC…SALMON_QUANT (SRR27320691) | 69 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (583)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[12/f39ea8] NFC…E:TRIMGALORE (SRR27320687) | 82 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 82
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 79 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (583)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[9b/5325b1] NFC…TER_TRIMMING (SRR27320687) | 82 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 79 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (584)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 82 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 79 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (584)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 82 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 79 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (584)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 82 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 79 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 79
Plus 30 more processes waiting for tasks…

executor >  slurm (584)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 82 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[6d/9385bf] NFC…SALMON_QUANT (SRR27320695) | 80 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 80
Plus 30 more processes waiting for tasks…

executor >  slurm (584)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 82 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 82
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 81 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (584)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[2e/77342c] NFC…FQ_SUBSAMPLE (SRR27320682) | 81 of 83
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 81 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (585)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 81 of 83
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 81 of 81
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (585)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[29/767f8e] NFC…FQ_SUBSAMPLE (SRR27320687) | 82 of 83
[ec/af8a08] NFC…SALMON_QUANT (SRR27320682) | 81 of 82
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (586)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[29/767f8e] NFC…FQ_SUBSAMPLE (SRR27320687) | 82 of 83
[74/701fa4] NFC…SALMON_QUANT (SRR27320687) | 81 of 82
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (586)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[29/767f8e] NFC…FQ_SUBSAMPLE (SRR27320687) | 82 of 83
[74/701fa4] NFC…SALMON_QUANT (SRR27320687) | 81 of 82
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (586)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[29/767f8e] NFC…FQ_SUBSAMPLE (SRR27320687) | 82 of 83
[74/701fa4] NFC…SALMON_QUANT (SRR27320687) | 81 of 82
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[b2/a36157] NFC…SALMON_QUANT (SRR27320666) | 69 of 81
Plus 30 more processes waiting for tasks…

executor >  slurm (587)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[29/767f8e] NFC…FQ_SUBSAMPLE (SRR27320687) | 82 of 83
[74/701fa4] NFC…SALMON_QUANT (SRR27320687) | 82 of 82
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[42/e03d6f] NFC…SALMON_QUANT (SRR27320692) | 70 of 82
Plus 30 more processes waiting for tasks…

executor >  slurm (587)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[74/701fa4] NFC…SALMON_QUANT (SRR27320687) | 82 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[42/e03d6f] NFC…SALMON_QUANT (SRR27320692) | 70 of 82
Plus 30 more processes waiting for tasks…

executor >  slurm (588)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 82 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[42/e03d6f] NFC…SALMON_QUANT (SRR27320692) | 70 of 82
Plus 30 more processes waiting for tasks…

executor >  slurm (588)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 82 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[42/e03d6f] NFC…SALMON_QUANT (SRR27320692) | 70 of 82
Plus 30 more processes waiting for tasks…

executor >  slurm (588)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[42/e03d6f] NFC…SALMON_QUANT (SRR27320692) | 70 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (589)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[c9/f5752a] NFC…E:TRIMGALORE (SRR27320696) | 83 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 83
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[48/fd80b3] NFC…SALMON_QUANT (SRR27320676) | 71 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (589)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[08/bf69ac] NFC…TER_TRIMMING (SRR27320696) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[48/fd80b3] NFC…SALMON_QUANT (SRR27320676) | 71 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (590)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[48/fd80b3] NFC…SALMON_QUANT (SRR27320676) | 71 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (590)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[48/fd80b3] NFC…SALMON_QUANT (SRR27320676) | 71 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (590)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[48/fd80b3] NFC…SALMON_QUANT (SRR27320676) | 71 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (590)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[8e/42b83a] NFC…SALMON_QUANT (SRR17866854) | 72 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (591)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[ee/838012] NFC…SALMON_QUANT (SRR27320685) | 72 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (592)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[97/815e3b] NFC…SALMON_QUANT (SRR27320689) | 73 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (592)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[58/7b894b] NFC…SALMON_QUANT (SRR27320675) | 73 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (592)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 83 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 83
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[58/7b894b] NFC…SALMON_QUANT (SRR27320675) | 73 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (592)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 84 of 84
[70/f66d42] NFC…FQ_SUBSAMPLE (SRR27320696) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[58/7b894b] NFC…SALMON_QUANT (SRR27320675) | 73 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (593)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 84 of 84
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[58/7b894b] NFC…SALMON_QUANT (SRR27320675) | 73 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (594)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 84 of 84
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[20/16911c] NFC…SALMON_QUANT (SRR27320698) | 74 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (594)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 84 of 84
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[20/16911c] NFC…SALMON_QUANT (SRR27320698) | 74 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (594)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[67/653975] NFC…E:TRIMGALORE (SRR27320693) | 84 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 84 of 84
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[20/16911c] NFC…SALMON_QUANT (SRR27320698) | 74 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (594)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 85 of 86
[f1/29cd5f] NFC…TER_TRIMMING (SRR27320693) | 84 of 85
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[20/16911c] NFC…SALMON_QUANT (SRR27320698) | 74 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (595)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 85 of 86
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 85
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[20/16911c] NFC…SALMON_QUANT (SRR27320698) | 74 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (596)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 85 of 86
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 85
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (596)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 85 of 86
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 85
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (596)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 85 of 86
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 85
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 83 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (596)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[66/3b6043] NFC…E:TRIMGALORE (SRR27320697) | 85 of 86
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 85
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 84 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 83
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (596)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 86
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 84 of 84
[aa/948d96] NFC…SALMON_QUANT (SRR27320696) | 83 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (597)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 84 of 86
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 84 of 84
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 83 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (598)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 84 of 86
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 84 of 84
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 83 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (598)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 85 of 86
[ca/442a96] NFC…FQ_SUBSAMPLE (SRR27320693) | 84 of 85
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 83 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (599)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 85 of 86
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 84 of 85
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 83 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 83
Plus 30 more processes waiting for tasks…

executor >  slurm (599)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 85 of 86
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 84 of 85
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (599)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[46/81ef79] NFC…TER_TRIMMING (SRR27320697) | 85 of 86
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 84 of 85
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (599)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 84 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (600)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 84 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 75 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (601)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 84 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[88/97d7f0] NFC…SALMON_QUANT (SRR27320682) | 76 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (603)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 84 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 78 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (603)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 84 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 78 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (603)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 84 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 78 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (603)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 85 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 84
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 78 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (603)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 85 of 86
[fe/b32259] NFC…SALMON_QUANT (SRR27320693) | 84 of 85
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 78 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (604)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 85 of 86
[00/5b4b21] NFC…SALMON_QUANT (SRR27320697) | 84 of 85
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 78 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (605)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[d3/9f410d] NFC…FQ_SUBSAMPLE (SRR27320697) | 85 of 86
[00/5b4b21] NFC…SALMON_QUANT (SRR27320697) | 84 of 85
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1a/e4ad00] NFC…SALMON_QUANT (SRR27320693) | 79 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (605)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[00/5b4b21] NFC…SALMON_QUANT (SRR27320697) | 84 of 86
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1a/e4ad00] NFC…SALMON_QUANT (SRR27320693) | 79 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (606)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 84 of 86
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1a/e4ad00] NFC…SALMON_QUANT (SRR27320693) | 79 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (606)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 84 of 86
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1a/e4ad00] NFC…SALMON_QUANT (SRR27320693) | 79 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (606)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 84 of 86
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[f7/8f3a8e] NFC…SALMON_QUANT (SRR27320695) | 80 of 84
Plus 30 more processes waiting for tasks…

executor >  slurm (607)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[00/5b4b21] NFC…SALMON_QUANT (SRR27320697) | 85 of 86
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[61/72eca8] NFC…SALMON_QUANT (SRR27320697) | 80 of 85
Plus 30 more processes waiting for tasks…

executor >  slurm (607)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[00/5b4b21] NFC…SALMON_QUANT (SRR27320697) | 85 of 86
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[61/72eca8] NFC…SALMON_QUANT (SRR27320697) | 80 of 85
Plus 30 more processes waiting for tasks…

executor >  slurm (607)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[61/72eca8] NFC…SALMON_QUANT (SRR27320697) | 80 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (607)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[86/1de28b] NFC…SALMON_QUANT (SRR27320696) | 81 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 81 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6f/7abe03] NFC…SALMON_QUANT (SRR27320687) | 82 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[6f/7abe03] NFC…SALMON_QUANT (SRR27320687) | 82 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[1a/e4ad00] NFC…SALMON_QUANT (SRR27320693) | 83 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[88/97d7f0] NFC…SALMON_QUANT (SRR27320682) | 84 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[61/72eca8] NFC…SALMON_QUANT (SRR27320697) | 85 of 86
Plus 30 more processes waiting for tasks…

executor >  slurm (608)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
Plus 30 more processes waiting for tasks…

executor >  slurm (609)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 0 of 1
Plus 29 more processes waiting for tasks…

executor >  slurm (609)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 0 of 1
Plus 29 more processes waiting for tasks…

executor >  slurm (609)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[-        ] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 0 of 1
Plus 28 more processes waiting for tasks…

executor >  slurm (610)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 0 of 1
Plus 28 more processes waiting for tasks…

executor >  slurm (610)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 0 of 1
Plus 28 more processes waiting for tasks…

executor >  slurm (610)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[-        ] NFC…_ALIGNMENT:SE_GENE_UNIFIED | 0 of 1
[-        ] NFC…MENT:SE_TRANSCRIPT_UNIFIED | 0 of 1
[-        ] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 25 more processes waiting for tasks…

executor >  slurm (613)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 25 more processes waiting for tasks…

executor >  slurm (613)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 0 of 1
Plus 25 more processes waiting for tasks…

executor >  slurm (613)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 0 of 1
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 25 more processes waiting for tasks…

executor >  slurm (613)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 0 of 1
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 25 more processes waiting for tasks…

executor >  slurm (613)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
Plus 25 more processes waiting for tasks…

executor >  slurm (613)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[-        ] NFCORE_RNASEQ:RNASEQ:MULTIQC   | 0 of 1
Plus 24 more processes waiting for tasks…

executor >  slurm (614)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[82/d262d1] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 0 of 1
Plus 24 more processes waiting for tasks…

executor >  slurm (614)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[82/d262d1] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 0 of 1
Plus 24 more processes waiting for tasks…

executor >  slurm (614)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[82/d262d1] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 1 of 1 ✔
Plus 24 more processes waiting for tasks…

executor >  slurm (614)
[5f/ea4b9f] NFC…ssembly.annotation.gtf.gz) | 1 of 1 ✔
[61/ad61dc] NFC…ary_assembly.genome.fa.gz) | 1 of 1 ✔
[c9/6e28bc] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[5b/14e939] NFC…y.annotation.filtered.gtf) | 1 of 1 ✔
[d9/6a1c10] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[51/7aaf30] NFC…rimary_assembly.genome.fa) | 1 of 1 ✔
[-        ] NFC…ASEQ:RNASEQ:SAMTOOLS_INDEX -
[-        ] NFC…_SETSTRANDEDNESS:CAT_FASTQ -
[b3/0dbcd3] NFC…NESS:FQ_LINT (SRR27320697) | 86 of 86 ✔
[11/3475ce] NFC…ALORE:FASTQC (SRR27320693) | 86 of 86 ✔
[6e/7d805c] NFC…E:TRIMGALORE (SRR27320690) | 86 of 86 ✔
[5c/499d35] NFC…TER_TRIMMING (SRR27320690) | 86 of 86 ✔
[af/912808] NFC…FQ_SUBSAMPLE (SRR27320690) | 86 of 86 ✔
[90/60c3e3] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[-        ] NFC…Y_STAR_SALMON:SALMON_QUANT -
[-        ] NFC…STAR_SALMON:CUSTOM_TX2GENE -
[-        ] NFC…AR_SALMON:TXIMETA_TXIMPORT -
[-        ] NFC…TAR_SALMON:SE_GENE_UNIFIED -
[-        ] NFC…LMON:SE_TRANSCRIPT_UNIFIED -
[-        ] NFC…ASEQ:DESEQ2_QC_STAR_SALMON -
[7f/3c982c] NFC…SALMON_QUANT (SRR27320690) | 86 of 86 ✔
[c1/700ed2] NFC…MENT:CUSTOM_TX2GENE (null) | 1 of 1 ✔
[b9/a5b371] NFC…ALIGNMENT:TXIMETA_TXIMPORT | 1 of 1 ✔
[28/9dd3a2] NFC…GENE_UNIFIED (all_samples) | 1 of 1 ✔
[d0/538cba] NFC…RIPT_UNIFIED (all_samples) | 1 of 1 ✔
[29/44c176] NFC…EQ:RNASEQ:DESEQ2_QC_PSEUDO | 1 of 1 ✔
[82/d262d1] NFC…_RNASEQ:RNASEQ:MULTIQC (1) | 1 of 1 ✔
Plus 24 more processes waiting for tasks…
-[nf-core/rnaseq] Pipeline completed successfully -
```