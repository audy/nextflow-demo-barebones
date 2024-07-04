include { FASTP } from './modules/nf-core/fastp'


workflow {
    FASTP(
        Channel.of([
            [ id:'test', single_end:true ],
            [ file(params.input, checkIfExists: true) ]
        ]),
        [],
        false,
        false,
        false
    )
}
