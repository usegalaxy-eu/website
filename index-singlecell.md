---
layout: subsite-galaxy
website: https://singlecell.usegalaxy.eu
gitter: usegalaxy-eu/Lobby
subdomain: singlecell
---

![single cell Galaxy](/assets/media/logo_single_cell.svg){:.sc-intro-left}

# Welcome to the world of Single Cell Omics
{:.no_toc}

The Single Cell Omics workbench is a comprehensive set of analysis tools and consolidated workflows. The workbench is based on the [Galaxy framework](https://galaxyproject.org){:target="_blank"},
which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation comprises more than 20 bioinformatics tools dedicated to different research areas of single cell biology.

This service is a joint project between different groups from the [Earlham Institute](http://www.earlham.ac.uk){:target="_blank"}, the [EMBL-EBI](https://www.ebi.ac.uk){:target="_blank"}, [EMBL](https://gbcs.embl.de){:target="_blank"} the [Sorbonne University](http://artbio.fr){:target="_blank"}, [Peter MacCallum Cancer Centre](https://www.petermac.org){:target="_blank"} and the [University of Freiburg](https://galaxyproject.eu/freiburg/){:target="_blank"}.
The server is part if the European Galaxy server and is maintained by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"} as part of [de.NBI](https://www.denbi.de){:target="_blank"} and [ELIXIR](http://elixir-europe.org){:target="_blank"}.


# Content
{:.no_toc}

1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training

**Want to learn more about single cell analyses? Check out the following hands-on tutorials from [the Galaxy Training Network](https://galaxyproject.github.io/training-material/){:target=_"blank"}.**

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

| Lesson                                          | Slides                                                                                                                                                                                                   | Hands-on                                                                                                                                                                                     | Input dataset                                                                                           | Workflows                                                                                                                                                                                                                                                 | Galaxy tour | Galaxy History                                                                                                                                                                                                                                                               |
| ---                                             | ---                                                                                                                                                                                                      | ---                                                                                                                                                                                          | ---                                                                                                     | ---                                                                                                                                                                                                                                                       | ---         | ---                                                                                                                                                                                                                                                                          |
| Introduction to Transcriptomics                 | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"}                               |                                                                                                                                                                                              |                                                                                                         |                                                                                                                                                                                                                                                           |             |                                                                                                                                                                                                                                                                              |
| Plates, Batches, and Barcodes                   | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-plates-batches-barcodes/slides.html){:target="_blank"} |                                                                                                                                                                                              |                                                                                                         |                                                                                                                                                                                                                                                           |             |                                                                                                                                                                                                                                                                              |
| Understanding Barcodes                          |                                                                                                                                                                                                          | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-umis/tutorial.html){:target="_blank"}          | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2573177){:target="_blank"} |                                                                                                                                                                                                                                                           |             |                                                                                                                                                                                                                                                                              |
| Pre-processing of Single-Cell RNA Data          |                                                                                                                                                                                                          | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna_preprocessing/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2573175){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=49073a24429d93d6){:target="_blank"} [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=76a6330d5fc241c7){:target="_blank"} |             | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/celseq2-single-batch-mm10){:target="_blank"} [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/celseq2-multi-batch-workflow){:target="_blank"} |
| Single-Cell Quality Control with Scater         |                                                                                                                                                                                                          | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-scater-qc/tutorial.html){:target="_blank"}     | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/3386291){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=50f8693fac7e134b){:target="_blank"}                                                                                                                              |             |                                                                                                                                                                                                                                                                              |
| Downstream Single-cell RNA analysis with RaceID |                                                                                                                                                                                                          | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-raceid/tutorial.html){:target="_blank"}        | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1511582){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=2f8d9fb85242eca7){:target="_blank"}                                                                                                                              |             | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/raceid-training-material){:target="_blank"}                                                                                                                                          |
| Clustering 3K PBMCs with ScanPy                 |                                                                                                                                                                                                          | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-scanpy-pbmc3k/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/3581213){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=921cab3e6faf30be){:target="_blank"}                                                                                                                              |             |                                                                                                                                                                                                                                                                              |
{:.table.table-striped}


# Available tools

In this section we list all tools that have been integrated in the the single cell workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## Preprocessing

|                                                                            | Formats     | QC        | Demultiplexing | Mapping             | Quantification | Description                                                                                                                |
|---------------------------------------------------------------------------:|:-----------:|:---------:|:--------------:|:-------------------:|:--------------:|:---------------------------------------------------------------------------------------------------------------------------|
|                                                             AnnData / Loom | CSV LOOM H5 |           |                |                     |                | Converts between various different single-cell formats and permits various levels of inspection and manipulation           |
|             {% include tool.html id="crosscontamination_barcode_filter" %} | CSV         | Y         |                |                     |                | QC tool for inspecting raw count matrices and determining the level of contamination between neighbouring sequencing wells |
|                                         {% include tool.html id="fastp" %} | FASTA/Q     | Y         |                |                     |                |                                                                                                                            |
| {% include tool.html id="FastQC" %} / {% include tool.html id="MultiQC" %} | FASTQ       | Y         |                |                     |                | MultiQC aggregate results from bioinformatics analyses into a single report                                                |
|                                                                htseq-count | BAM         |           |                |                     | Y              |                                                                                                                            |
|                                                                   Je Suite | FASTA/Q BAM | Filtering | Y              |                     | Y              |                                                                                                                            |
|                                                                  UMI-tools | FASTQ       | Filtering | Y              |                     | Y              | Includes utilities to count, deduplicate, extract, group, and whitelist Unique Molecular Identifiers (UMIs)                |
|                                  {% include tool.html id="rna_starsolo" %} | FASTA/Q     | Filtering | Y              | Y                   | Y              | Supports Droplet (Drop-seq, 10X) protocols, and can emulate CellRanger pipeline                                            |
|                                       {% include tool.html id="Bowtie2" %} | FASTA/Q     | Filtering |                | Y                   |                |                                                                                                                            |
|                                        {% include tool.html id="HISAT2" %} | FASTA/Q     | Filtering |                | Y                   |                |                                                                                                                            |
|                                                            Alevin / Salmon | FASTA/Q BAM | Filtering |                | Salmon              | Salmon         |                                                                                                                            |
|                                        {% include tool.html id="scPipe" %} |             | Filtering | Y              | Subread             | Subread        | CelSeq2, etc. Uses Scater and SCRAN for downstream (Filtering, Normalisation, Batch, Clustering, Embedding)                |
|                                 {% include tool.html id="featureCounts" %} |             |           |                | Subread             | Subread        |                                                                                                                            |
|                                       {% include tool.html id="BWA-MEM" %} | FASTA/Q     |           |                | Y, not splice-aware |                |                                                                                                                            |


## Downstream

|         | Formats                              | Filtering | Normalisation                             | Batch / Confounder Removal         | Clustering               | Embedding                           | Lineage/Pseudotime | Classification / Marker | Other                                                                           |
|--------:|:------------------------------------:|:---------:|:-----------------------------------------:|:----------------------------------:|:------------------------:|:-----------------------------------:|:------------------:|:-----------------------:|:-------------------------------------------------------------------------------:|
|     SC3 | SCE                                  |           |                                           |                                    | Consensus K-means        | PCA                                 |                    |                         |                                                                                 |
|  ScanPy | AnnData CSV LOOM excel mtx umi-tools | Y         | CPM                                       | Cell Cycle ComBat MNNCorrect BBKNN | PCA leiden louvain       | PCA tSNE UMAP                       | dendrogram PAGA    | Y                       | one of the first with 10X support                                               |
|  Scater | SCE SC3                              | Y         | CPM FPKM TPM                              |                                    | PCA                      | PCA tSNE UMAP PHATE diffmap         |                    |                         |                                                                                 |
|  Seurat | CSV 10X H5 Alevin                    | Y         | LogNormalise Centered-log Relative-counts | SCTransform SNNAnchor              | SharedNN                 | PCA tSNE UMAP                       |                    | Y                       |                                                                                 |
|  RaceID | CSV SCSeq                            | Y         | basic library size                        | Linear CCcorrect (Cell cycle)      | k-means k-medians hclust | PCA tSNE UMAP Fruchterman-Rheingold | StemID FateID      |                         |                                                                                 |
| Monocle |                                      | Y         | basic library size                        | Y                                  | Louvain KNN GMM          | ICA tSNE L1-graph SimplePPT DDRTree | Y                  | Y                       | Works well with CellRanger                                                      |
|  DESeq2 | CSV htseq-count summarizedexperiment | Y         | DESeq2                                    |                                    | Y                        |                                     |                    |                         |                                                                                 |
|  scPipe |                                      | Y         | Y                                         | Y                                  | Y                        | Y                                   |                    |                         | CelSeq2, etc. Uses Scater and SCRAN for downstream. Also perform pre-processing |



Tool | Description | Reference
--- | --- | ---
{% include tool.html id="FastQC" %} | A quality control tool for high throughput sequence data | -
 | MQC | [Ewels et al. 2016](https://doi.org/10.1093/bioinformatics/btw354){:target="_blank"}
{% include tool.html id="fastp" %} | fast all-in-one preprocessing for FASTQ files | [Shifu et al. 2018](https://doi.org/10.1101/274100){:target="_blank"}
{% include tool.html id="scPipe" %} | preprocessing pipeline for single cell RNA-seq | [Tian et al. 2018](https://doi.org/10.1371/journal.pcbi.1006361){:target="_blank"}
{: .table.table-striped .tooltable}


## Read Mapping

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="HISAT2" %} | Hierarchical indexing for spliced alignment of transcripts | [Pertea et al. 2016](https://doi.org/10.1038/nprot.2016.095){:target="_blank"}
{% include tool.html id="RNA STAR" %} | Rapid spliced aligner for RNA-seq data | [Dobin et al. 2013](https://academic.oup.com/bioinformatics/article/29/1/15/272537/STAR-ultrafast-universal-RNA-seq-aligner){:target="_blank"}
{% include tool.html id="STAR-fusion" %} | Fast fusion gene finder | [Haas et al. 2017](https://www.biorxiv.org/content/early/2017/03/24/120295){:target="_blank"}
{% include tool.html id="Bowtie2" %} | Fast and sensitive read alignment | [Langmead et al. 2012](https://doi.org/10.1038/nmeth.1923){:target="_blank"}
{% include tool.html id="BWA-MEM" %} | Software package for mapping low-divergent sequences against a large reference genome | [Li and Durbin 2009](https://doi.org/10.1093/bioinformatics/btp324){:target="_blank"}, [Li and Durbin 2010](https://doi.org/10.1093/bioinformatics/btp698){:target="_blank"}
{: .table.table-striped .tooltable}


## Quantification

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="featureCounts" %} | Ultrafast and accurate read summarization program | [Liao et al. 2014](http://dx.doi.org/10.1093/bioinformatics/btt656){:target="_blank"}
{% include tool.html id="htseq-count" %} | Tool for counting reads in features | [Anders et al. 2015](https://doi.org/10.1093%2Fbioinformatics%2Fbtu638){:target="_blank"}
{% include tool.html id="Sailfish" %} | Rapid Alignment-free Quantification of Isoform Abundance | [Patro et al. 2014](http://dx.doi.org/10.1038/nbt.2862){:target="_blank"}
{% include tool.html id="Salmon" %} | Fast, accurate and bias-aware transcript quantification | [Patro et al. 2017](http://dx.doi.org/10.1038/nmeth.4197){:target="_blank"}
{: .table.table-striped .tooltable}

## Differential expression analysis

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="DESeq2" %} | Differential gene expression analysis based on the negative binomial distribution | [Love et al. 2014](http://doi.org/10.1186/s13059-014-0550-8){:target="_blank"}
{: .table.table-striped .tooltable}

## Utilities

Tool | Description | Reference
--- | --- | ---
SAMtools | Utilities for manipulating alignments in the SAM format | [Heng et al. 2009](https://doi.org/10.1093/bioinformatics/btp352){:target="_blank"}
BEDTools | Utilities for genome arithmetic | [Quinlan and Hall 2010](https://doi.org/10.1093/bioinformatics/btq033){:target="_blank"}
deepTools | Tools for exploring deep-sequencing data | [Ramirez et al. 2014](https://doi.org/10.1093/nar/gku365){:target="_blank"}, [Ramirez et al. 2016](https://doi.org/10.1093/nar/gkw257){:target="_blank"}
UMI-tools | Modeling sequencing errors in Unique Molecular Identifiers to improve quantification accuracy | [Smith et al. 2017](https://doi.org/10.1101/gr.209601.116){:target="_blank"}
Je | A versatile suite to handle multiplexed NGS libraries with unique molecular identifiers | [Girardot at al. 2016](https://doi.org/10.1186/s12859-016-1284-2)
{% include tool.html id="RaceID" %} | Clustering using RaceID performs clustering, outlier detection, dimensional reduction | [Josip, at al. 2018](https://doi.org/10.1038/nmeth.4662)
AnnData tools | Import, Export, Modify, Inspect and Convert AnnData files.  | [AnnData Documentation](https://anndata.readthedocs.io/en/latest/)
Scanpy | Single-Cell Analysis in Python | [Wolf at al. 2018](https://doi.org/10.1186/s13059-017-1382-0)
{: .table.table-striped .tooltable}


# Contributors

- [Bérénice Batut](https://github.com/bebatut)
- [Mehmet Tekman](https://github.com/mtekman)
- [Maria Doyle](https://github.com/mblue9)
- [Pablo Moreno](https://github.com/pcm32)
- [Ni Huang](https://github.com/nh3)
- [Jonathan Manning](https://github.com/pinin4fjords)
- [Christophe Antoniewski](https://github.com/drosofff)
- [Lea Bellenger](https://github.com/bellenger-l)
- [Jelle Scholtalbers](https://github.com/scholtalbers)
- [Charles Girardot](https://github.com/cgirardot)
- [Nicola Soranzo](https://github.com/nsoranzo)
- [Graham Etherington](https://github.com/ethering)
- [Fidel Ramirez](https://github.com/fidelram)
- [Daniel Blankenberg](https://github.com/blankenberg)
- [James Taylor](https://github.com/jxtx)
- [Bjoern Gruening](https://github.com/bgruening)


