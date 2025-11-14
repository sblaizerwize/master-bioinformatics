#!/usr/bin/env nextflow

// Module INCLUDE statements
include { FASTQC } from './modules/fastqc.nf'
include { TRIM_GALORE } from './modules/trim_galore.nf'
include { HISAT2_ALIGN } from './modules/hisat2_align.nf'
include { MULTIQC } from './modules/multiqc.nf'

workflow {
    log.info """\
        R N A S E Q - N F   P I P E L I N E
        ===================================
        transcriptome: ${params.transcriptome}
        reads        : ${params.reads}
        outdir       : ${params.outdir}
    """
    // Create input channel
    read_ch = channel.fromPath(params.reads)
        .splitCsv(header:true)
        .map{ row -> [file(row.fastq_1), file(row.fastq_2)] }

    // Initial Quality Control
    FASTQC(read_ch)

    // Adapter Trimming and post-trimming QC
    TRIM_GALORE(read_ch)

    // Alignment to a refence genome
    HISAT2_ALIGN(TRIM_GALORE.output.trimmed_reads, file(params.transcriptome))

    // Comprehensive QC report generation
    MULTIQC(
        FASTQC.out.zip.mix(
            FASTQC.out.html,
            TRIM_GALORE.out.trimming_reports,
            TRIM_GALORE.out.fastqc_reports_1,
            TRIM_GALORE.out.fastqc_reports_2,
            HISAT2_ALIGN.out.log
        ).collect(),
        params.report_id
    )
}