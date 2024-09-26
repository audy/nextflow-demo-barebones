process MAKE_FILE{
    container "docker.io/library/ubuntu:latest"

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
