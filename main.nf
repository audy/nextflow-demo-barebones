process MAKE_FILE{
    container "ubuntu:latest"

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
