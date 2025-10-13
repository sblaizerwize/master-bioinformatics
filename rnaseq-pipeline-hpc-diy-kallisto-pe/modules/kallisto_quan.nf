#!/usr/bin/env nextflow

process KALLISTO_QUAN {

    container "community.wave.seqera.io/library/kallisto:0.51.1--b63691b6841c7a52"
    publishDir params.outdir, mode: 'copy'

    input:
    tuple path(read1), path(read2)
    path index

    output:
    path "${read1.simpleName}-kallisto", emit: abundance 
    path "${read1.simpleName}-kallisto.log", emit: log

    script:
    """
    kallisto quant \
    -i $index \
    -o ${read1.simpleName}-kallisto \
    -t ${task.cpus} \
    $read1 $read2 \
    &> ${read1.simpleName}-kallisto.log
    """
}
