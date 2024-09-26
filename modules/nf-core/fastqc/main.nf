process FASTQC {
    container 'biocontainers/fastqc:0.12.1--hdfd78af_0' 

    input:
    tuple val(meta), path(reads)

    output:
    path("test.txt")

    script:
    """
    date > test.txt
    """
}
