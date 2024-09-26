process MAKE_FILE{
    container 'biocontainers/fastqc:0.12.1--hdfd78af_0'

    output:
    path("test.txt")

    script:
    """
    date > test.txt
    """
}

workflow {
  MAKE_FILE()
}
