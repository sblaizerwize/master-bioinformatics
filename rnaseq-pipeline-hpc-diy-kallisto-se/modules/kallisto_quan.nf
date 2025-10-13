#!/usr/bin/env nextflow

process KALLISTO_QUAN {

    container "community.wave.seqera.io/library/kallisto:0.51.1--b63691b6841c7a52"
    publishDir params.outdir, mode: 'copy'

    input:
    path reads
    path index

    output:
    path "${reads.simpleName}-kallisto", emit: abundance 
    path "${reads.simpleName}-kallisto.log", emit: log

    script:
    """
    kallisto quant -i $index \
    -o ${reads.simpleName}-kallisto \
    -t ${task.cpus} \
    --single \
    -l 275 \
    -s 30 \
    $reads \
    &> ${reads.simpleName}-kallisto.log
    """
}
