
# Master in Bioinformatics Project

This repository contains the requirements, code, and backlog of my bioinformatics master's thesis developed at CIMA University of Navarra with title: **"Integrative Analysis of Differential Gene Expression, Transcript Usage, and RNA Secondary Structure in Early- and Late-Onset Colorectal Cancer"** under the supervision of Fernando Pastor Rodriguez and Igor Ruiz de los Mozos.

For a quick overview of the project, you can check the following resources:

🎬 [YouTube video](https://youtu.be/atpuYKZB7xI) describing the project.

🏁 [Project's roadmap](https://github.com/users/sblaizerwize/projects/5/views/4?visibleFields=%5B%22Title%22%2C%22Status%22%2C%22Milestone%22%2C224733603%2C224733604%5D&sortedBy%5Bdirection%5D=desc&sortedBy%5BcolumnId%5D=224733604) to keep up with the progress and latest 
changes.

📊 Project's main results. 

## **Introduction**
Colorectal cancer (CRC) is one of the leading causes of cancer-related morbidity and mortality
worldwide. Traditionally regarded as a disease predominantly affecting older individuals,
recent years have seen a marked increase in cases diagnosed in patients under 50 years of
age. This trend, referred to as early-onset colorectal cancer (EOCRC), is associated with
distinct clinical, molecular, and prognostic characteristics. Compared with late-onset colorectal
cancer (LOCRC), EOCRC tumors more frequently exhibit signet ring cell features, tend to
arise in the distal colon or rectum, and display distinct mutational landscapes, including
a lower prevalence of APC-mutated tumors. Elucidating the molecular mechanisms that
differentiate EOCRC from LOCRC is therefore critical for improving early detection strategies
and guiding more effective therapeutic approaches.

## **Work objectives**
The primary goal of this project is to identify genes and transcripts that are differentially
regulated in early-onset and late-onset colorectal cancer, and to evaluate whether changes
in isoform usage are associated with differences in their RNA secondary structure through
computational prediction.

## **Proposed solution**
We adopted an integrative transcriptomic strategy to investigate molecular differences
between early-onset and late-onset colorectal cancer (EOCRC and LOCRC). Building
upon a previously conducted gene-level study from [Marx et al.](https://www.frontiersin.org/journals/oncology/articles/10.3389/fonc.2024.1365762/full), we extend the analysis by incorporating
isoform-level regulation and RNA secondary structure prediction, thereby moving beyond expression
changes alone to explore post-transcriptional and structural layers of regulation. The overall integrative analysis workflow is summarized below:

![tfm-workflow](/docs-static-website/images/tfm-schematics.svg)
**Figure** Schematic overview of the integrative transcriptomic analysis workflow implemented
in this study.

## **Contents**
The following table describes the content of this repository. 

| Directory | Description |
|----------|-------------|
| `docs-static-website` | Materials used to generate the static website of this project. |
| `nextflow-pipelines` | Nextflow-based workflows for RNA-seq data processing and analysis using Kallisto and Salmon. |
| `R-scripts` | R scripts for differential gene expression analysis (DESeq2) and differential transcript usage (DTU) analysis using IsoformSwitchAnalyzeR. |
| `rna-structure-prediction` | Tools and scripts for predicting and analyzing RNA secondary structures using RNAstructure. |
| `tools-slurm-scripts` | SLURM scripts for data compression and for uploading data to Zenodo. |
| `writing` | Writing materials (images, tables, templates) and the workflow for generating the thesis document using LaTeX. |


## **Prerequisites**
Before using this repository, you must comply with the following:

- **HPC Access**: Many scripts are designed for SLURM-managed clusters. Ensure you have access to an HPC environment.
- **nf-core/rnaseq version 3.21 or above**: For running RNA-seq pipelines. Instructions at [nf-core/rnaseq](https://nf-co.re/rnaseq/usage).
- **RStudio and R version 4.5.1 (2025-06-13) or above**: For statistical analyses. Required packages are listed in the session information section of each R script.
- **RNA Structure Tools**: [RNAstructure]((http://rna.urmc.rochester.edu/RNAstructure.html)) for secondary structure prediction and [bpRNA toolkit](https://github.com/hendrixlab/bpRNA) for motif annotation.

## **General Workflow**
The general workflow of the project involves the following steps:

1. **Data Preparation**: Obtain RNA-seq data from NCBI Gene Expression Omnibus (GEO) database. The SRA study [SRP357925](https://trace.ncbi.nlm.nih.gov/Traces/index.html?view=study&acc=SRP357925) dataset comprises 21 pairs of EOCRC patients and the SRA study [SRP479528](https://trace.ncbi.nlm.nih.gov/Traces/index.html?study=SRP479528) dataset 22 pairs of LOCRC patients. Other required files, check the Data availability section in this README, such as reference genomes and annotation files can be downloaded from Zenodo under accession [DOI: 10.5281/zenodo.17801437](https://zenodo.org/records/17801437).
2. **Pipeline Execution**: Run appropriate Nextflow pipelines to process raw reads into counts or abundances.
3. **Analysis**: Use R scripts for data visualization and DGE and DTU analyses.
4. **Structure Prediction**: From the identified isoforms, predict their RNA secondary structures.

For detailed instructions, refer to the README files within each subfolder. If you encounter issues, check the project's roadmap for updates or known issues.

## **Data availability**
Here is a detailed description of the files contained in the Zenodo repository under accession [DOI: 10.5281/zenodo.17801437](https://zenodo.org/records/17801437).

| File Name | Description and Intended Use |
|----------|------------------------------|
| `Homo_sapiens.GRCh38.115.filtered.ensembl.gtf.gz` | Filtered Ensembl GTF annotation (GRCh38, release 115). Used for transcript and gene annotation during RNA-seq quantification and downstream analyses. |
| `genome.transcripts_ensembl.fa.gz` | FASTA file containing Ensembl transcript sequences. Required for building transcriptome indices or for sequence-based analyses. |
| `genome.transcripts.gencode.fa.gz` | FASTA file of GENCODE transcript sequences used for Salmon indexing and transcript-level quantification. |
| `gencode.v49.primary_assembly.annotation.filtered.gencode.gtf.gz` | Filtered GENCODE v49 GTF annotation corresponding to the primary assembly. Used as the main reference annotation for Salmon quantification and IsoformSwitchAnalyzeR analyses. |
| `build_salmon_index.txt` | Text file documenting the exact command and parameters used to build the Salmon transcriptome index, ensuring reproducibility of quantification results. |
| `rnaseq_salmon_results_gencode_samples_42.tar.gz` | Salmon quantification outputs (`quant.sf`) for the EOCRC cohort (42 samples), generated using the nf-core/rnaseq pipeline with GENCODE references. |
| `rnaseq_salmon_results_gencode_samples_44.tar.gz` | Salmon quantification outputs (`quant.sf`) for the LOCRC cohort (44 samples), processed identically to the EOCRC cohort. |
| `salmon_results_gencode_to_switchAnalyzeRlist.tar.gz` | Intermediate files and scripts used to import Salmon quantifications into IsoformSwitchAnalyzeR and generate a `switchAnalyzeRlist` object. |
| `dtu-42-44-crc-switchAnalyzeRlist-outputs.tar.gz` | Final outputs of the differential transcript usage (DTU) analysis, including isoform switch results, splicing summaries, functional consequence analyses, and associated metadata. |

## **Contributing**
This is a personal thesis repository, but suggestions for improvements are welcome via issues.

## **License**
See `LICENSE` for details.

