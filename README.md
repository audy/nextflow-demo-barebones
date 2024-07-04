# example-nextflow-pipeline

## Creating a Nextflow pipeline from scratch

Instructions for creating a Nextflow pipeline from scratch. You may wish to use
this instead of the default template used by `nf-core-tools` or perhaps you are
starting from an existing Nextflow pipeline that was created without
`nf-core-tools`.

### Step 1 - Initialize a new pipeline without `nf-core`

1. Create an `.nf-core.yml` file. It can be empty. This is just so that
   `nf-core-tools` recognizes the current working directory as the project
   root. Otherwise, it will try to install modules in `/`.
2. Install a module with `nf-core-tools`
    ```sh
    nf-core modules install fastp
    ```
3. Update `main.nf` (see example in this repo)
4. Run the pipeline:
    ```sh
    nextflow run main.nf --input test.fastq.gz
    ```
### Step 2 - Adding parameters and updating `nextflow_schema.json`

1. Make changes to `nextflow.config`:
    ```
    params {
      input = null
    }
    ```
2. Update the schema with `nf-core-tools`:
    ```
    nf-core schema build    
    ```
    **Note**: you can use the Web UI to customize the schema

## Creating a new Nextflow pipeline with `nf-core-tools`

`nf-core-tools` can initialize a new Nextflow pipeline from a starter template:

### Step 1 - Initialize a new pipeline

```sh
nf-core create # follow the instructions
```

### Step 2 - Commit the code and push to GitHub

1. (create git repo)
2. `git remote add origin https://github.com/username/repo.git`
5. `git push -u origin master`

## Deploying Nextflow pipelines to One Codex

### Step 1 - Create the Workflow on One Codex

1. Go to `https://app.onecodex.com` and log in if you aren't already
2. Go to "Run Workflows" > "Create New Workflow"
3. Select "Nextflow Pipeline" under "Workflow Type"
4. Enter the repository URL under "Git Repository"
5. Click "Save Draft"

You should now be able to run your workflow on one of your samples

## Adding Parameters to Nextflow pipelines

1. Add your parameter to `nextflow.config`
    ```
    # nextflow config
    params {
        my_paramter = null
    }
    ```
2. Update `nextflow_schema.json` using `nf-core-tools`:
    ```
    nf-core schema build
    ```
    **Note**: you may wish to use the interactive schema builder
3. Commit your changes
    ```
    git add nextflow.config nextflow_schema.json
    git commit -m 'update parameters'
    git tag v0.0.1
    git push origin master --tags
    ```
    **Note**: In order to ensure that the correct version is being used by
    One Codex, you must tag your commits and reference those tags under
    "Repository Tag" on the Edit Workflow page.

## Adding a module with `nf-core-tools`

```
nf-core modules install vcftools
git add . 
git commit -m "Added vcftools modules"
git push origin master
```

## Versioning

## Draft and Published Workflows

## Using Git Tags

We recommend using git tagging to pin your Workflow to a specific version
of your code. This will prevent accidentally pushing updates when the Git
repository changes.

- - What happens if I don't pin using a `git tag` wish a "published"
  workflow and then update `master`?

## Custom Docker Images

Currently, we support pulling public Docker images from the following
repositories. If you need to add a private repository, please [contact
support]().

## Assets

### What are assets?

### How do I create an asset?

### Automatic extraction of `.tar.gz` assets
