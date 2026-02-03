---
layout: default
title: Home
nav_order: 1
---

# Introduction

This project provides a cloud-based implementation of RNA-seq workflows for training and experimentation purposes 📚. It combines content from the official [Nextflow for RNA-seq training course](https://training.nextflow.io/latest/nf4_science/rnaseq/) with real-world RNA-seq data from the [DIY Transcriptomics course](https://diytranscriptomics.com/), executed entirely on AWS infrastructure.

The goal is to demonstrate how to run scalable and reproducible RNA-seq pipelines using Nextflow, while leveraging AWS compute resources for performance, flexibility, and cost optimization.

We would like to thank AWS and the University of Navarra for providing cloud resources (1,000 AWS credits) to support this project 💰.

⚡ Click [here](https://github.com/sblaizerwize/nextflow-for-rnaseq-training/tree/main) to view this project on GitHub. 

---

# Motivation

Nextflow is an open-source tool used to run bioinformatics pipelines for analyzing multiple samples in parallel. As of 2025, Nextflow has established a solid community that actively contributes to its well-documented pipelines and templates for building custom workflows. It has become a popular and practical tool among bioinformaticians.

One of Nextflow’s key strengths is its portability. Whether you're running workflows on your laptop, a high-performance computing (HPC) cluster, or cloud platforms like AWS, Nextflow abstracts the complexity of the compute environment so you can focus on your analysis. 

This project began after we received $1,000 in AWS Cloud credits. Our goal was to lay the foundation for running a Bulk RNA-seq analysis 🧬 using AWS infrastructure 💻. To avoid discarding valuable insights that could benefit newcomers to Nextflow, we created this practical guide for running RNA-seq analyses on the AWS Cloud.

---

# RNA-seq Pipelines

The content of this [project](https://github.com/sblaizerwize/nextflow-for-rnaseq-training/tree/main) is structured as follows:

| **Pipeline** | **Description** |
| ------ | ------ |
| `nextflow-for-rnaseq-aws` | Includes a reproduction of the [Nextflow for RNA-seq](https://training.nextflow.io/latest/nf4_science/rnaseq/) pipeline, adapted for AWS execution. |
| `rnaseq-aws-diy-transcriptomics` | Implements an RNA-seq pipeline using skin tissue data (10 samples) from the [DIY Transcriptomics](https://diytranscriptomics.com/) course. It builds a real-world workflow using **HISAT2** for the alignment of reads, and explores AWS insfrastructure setup.  |
| `rnaseq-aws-diy-kallisto` | Adapts the `rnaseq-aws-diy-transcriptomics` workflow to use **Kallisto**, a pseudoaligner, for lightweight RNA-seq analysis. This pipeline generates expression quantification (`abundance.tsv`) files for the same dataset.  |

---

# RNA-seq Pipelines: Results
This is a summary of results 🎯 from RNA-seq pipelines run with Nextflow on AWS Batch.

## **PIPELINE 1: nextflow-for-rnaseq-aws pipeline**
- [MULTIQC Report](/reports/nextflow-for-rnaseq-aws/all_single-end.html)
- [Nextflow Report](/reports/nextflow-for-rnaseq-aws/nextflow-for-rnaseq-aws.report-config.html)

## **PIPELINE 2: rnaseq-aws-diy-transcriptomics pipeline**
- [MULTIQC Report](/reports/rnaseq-aws-diy-transcriptomics/all_single-end.html)
- [Nextflow Report](/reports/rnaseq-aws-diy-transcriptomics/rnaseq-aws-diy-transcriptomics-report-config.html)
- [Nextflow Timeline Report](/reports/rnaseq-aws-diy-transcriptomics/rnaseq-aws-diy-transcriptomics-timeline.html)

## **PIPELINE 3: rnaseq-aws-diy-kallisto pipeline**
- [MULTIQC Report](/reports/rnaseq-aws-diy-kallisto/all_single-end.html)
- [Nextflow Report](/reports/rnaseq-aws-diy-kallisto/rnaseq-aws-diy-kallisto-report-config.html)
- [Nextflow Timeline Report](/reports/rnaseq-aws-diy-kallisto/rnaseq-aws-diy-kallisto-timeline.html)


Feel free to explore the code and run the pipeline directly from the repository 🙌.


