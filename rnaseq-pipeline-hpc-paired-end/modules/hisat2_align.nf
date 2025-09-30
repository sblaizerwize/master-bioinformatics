#!/usr/bin/env nextflow

process HISAT2_ALIGN {

    container "community.wave.seqera.io/library/hisat2_samtools:5e49f68a37dc010e"
    publishDir params.outdir, mode: 'copy'

    input:
    tuple path(read1), path(read2)
    path index_zip

    output:
    path "${read1.simpleName}.bam", emit: bam
    path "${read1.simpleName}.hisat2.log", emit: log

    script:
    """
    tar -xzvf $index_zip
    hisat2 -p ${task.cpus} -x ${index_zip.simpleName} -1 ${read1} -2 ${read2} \
    --new-summary --summary-file ${read1.simpleName}.hisat2.log | \
    samtools view -@ ${task.cpus} -bS -o ${read1.simpleName}.bam
    """
}
