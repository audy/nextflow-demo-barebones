process countLines {
    container "ubuntu:latest"

    input:
    path fastqPath

    output:
    path 'line-count.txt'

    """
    gzip -cd $fastqPath | wc -l > line-count.txt
    """
}

workflow {
    channel.fromPath(params.input, checkIfExists: true)
    | countLines
    | view
}
