include { FASTP } from './modules/nf-core/fastp'


workflow {
    FASTP(
        Channel.of([
            [ id:'test', single_end:true ],
            [ file(params.input_fastq, checkIfExists: true) ]
        ]),
        [],
        false,
        false,
        false
    )
}
