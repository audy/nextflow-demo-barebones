process MAKE_FILE{
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
