include { FASTQC } from './modules/nf-core/fastqc'

workflow {
    fastq_out = FASTQC(
        Channel.of([
            [ id:'test', single_end:true ],
            [ file(params.input_fastq, checkIfExists: true) ]
        ]),
    )
}
