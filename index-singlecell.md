---
layout: subsite-galaxy
website: https://singlecell.usegalaxy.eu
---

# Welcome to the world of Single Cell Omics
{:.no_toc}

![single cell Galaxy](/assets/media/){:.rna-intro-right}

The Sincle Cell Omics workbench is a comprehensive set of analysis tools and consolidated workflows. The workbench is based on the [Galaxy framework](https://galaxyproject.org/), 
which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation comprises more than 20 bioinformatics tools dedicated to different research areas of single cell biology.

This service is a joint project between different groups from the [Earlham Institute](http://www.earlham.ac.uk), the [EBI](https://www.ebi.ac.uk), [EMBL](https://gbcs.embl.de) the [Sorbonne University](http://drosophile.org/) and the [University of Freiburg](https://galaxyproject.eu/freiburg/).
The server is part if the European Galaxy server and is maintained by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"} as part of [de.NBI](https://www.denbi.de/) and [ELIXIR](http://elixir-europe.org/).


# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

**Want to learn more about single cell analyses? Take one of our guided tour or check out the following hands-on tutorials from [the Galaxy Training Network](https://galaxyproject.github.io/training-material/){:target=_"blank"}.**

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy tour | Galaxy History
--- | --- | --- | --- | --- | --- | ---
Introduction to Transcriptomics | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"} |  |  |  |  |
Plates, Batches, and Barcodes | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-plates-batches-barcodes/slides.html){:target="_blank"} |  |  |  |  |
Pre-processing of Single-Cell RNA Data |  | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna_preprocessing/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2573175){:target="_blank"} |  |  |
Understanding Barcodes |  | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-umis/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2573177){:target="_blank"} |  |  |
{:.table.table-striped}


# Available tools

In this section we list all tools that have been integrated in the the single cell workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## Preprocessing

Tool | Description | Reference
--- | --- | ---
[FastQC!]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Ffastqc%2Ffastqc){:target="_top"} | A quality control tool for high throughput sequence data | -
[MultiQC]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/multiqc/multiqc/){:target="_top"} | MultiQC aggregate results from bioinformatics analyses into a single report | [Ewels et al. 2016](https://doi.org/10.1093/bioinformatics/btw354){:target="_blank"}
[fastp]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/fastp/fastp/){:target="_top"} | fast all-in-one preprocessing for FASTQ files | [Shifu et al. 2018](https://doi.org/10.1101/274100){:target="_blank"}
[scPipe]({{ page.website }}?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/scpipe/scpipe/) | preprocessing pipeline for single cell RNA-seq | [Tian et al. 2018](https://doi.org/10.1371/journal.pcbi.1006361){:target="_blank"}
{: .table.table-striped .tooltable}


## Read Mapping

Tool | Description | Reference
--- | --- | ---
[HISAT2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fhisat2%2Fhisat2){:target="_top"} | Hierarchical indexing for spliced alignment of transcripts | [Pertea et al. 2016](https://doi.org/10.1038/nprot.2016.095){:target="_blank"}
[RNA STAR]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Frgrnastar%2Frna_star){:target="_top"} | Rapid spliced aligner for RNA-seq data | [Dobin et al. 2013](https://academic.oup.com/bioinformatics/article/29/1/15/272537/STAR-ultrafast-universal-RNA-seq-aligner){:target="_blank"}
[STAR-fusion]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fstar_fusion%2Fstar_fusion){:target="_top"} | Fast fusion gene finder | [Haas et al. 2017](https://www.biorxiv.org/content/early/2017/03/24/120295){:target="_blank"}
[Bowtie2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Fbowtie2%2Fbowtie2){:target="_top"} | Fast and sensitive read alignment | [Langmead et al. 2012](https://doi.org/10.1038/nmeth.1923){:target="_blank"}
[BWA-MEM]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/devteam/bwa/bwa_mem/){:target="_top"} | Software package for mapping low-divergent sequences against a large reference genome | [Li and Durbin 2009](https://doi.org/10.1093/bioinformatics/btp324){:target="_blank"}, [Li and Durbin 2010](https://doi.org/10.1093/bioinformatics/btp698){:target="_blank"}
{: .table.table-striped .tooltable}


## Quantification

Tool | Description | Reference
--- | --- | ---
[featureCounts]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Ffeaturecounts%2Ffeaturecounts){:target="_top"} | Ultrafast and accurate read summarization program | [Liao et al. 2014](http://dx.doi.org/10.1093/bioinformatics/btt656){:target="_blank"}
[htseq-count]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Flparsons%2Fhtseq_count%2Fhtseq_count){:target="_top"} | Tool for counting reads in features | [Anders et al. 2015](https://doi.org/10.1093%2Fbioinformatics%2Fbtu638){:target="_blank"}
[Sailfish]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fsailfish%2Fsailfish){:target="_top"} | Rapid Alignment-free Quantification of Isoform Abundance | [Patro et al. 2014](http://dx.doi.org/10.1038/nbt.2862){:target="_blank"}
[Salmon]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fsalmon%2Fsalmon){:target="_top"} | Fast, accurate and bias-aware transcript quantification | [Patro et al. 2017](http://dx.doi.org/10.1038/nmeth.4197){:target="_blank"}
{: .table.table-striped .tooltable}

## Differential expression analysis

Tool | Description | Reference
--- | --- | ---
[DESeq2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fdeseq2%2Fdeseq2){:target="_top"} | Differential gene expression analysis based on the negative binomial distribution | [Love et al. 2014](http://doi.org/10.1186/s13059-014-0550-8){:target="_blank"}
{: .table.table-striped .tooltable}

## Utilities

Tool | Description | Reference
--- | --- | ---
SAMtools | Utilities for manipulating alignments in the SAM format | [Heng et al. 2009](https://doi.org/10.1093/bioinformatics/btp352){:target="_blank"}
BEDTools | Utilities for genome arithmetic | [Quinlan and Hall 2010](https://doi.org/10.1093/bioinformatics/btq033){:target="_blank"}
deepTools | Tools for exploring deep-sequencing data | [Ramirez et al. 2014](https://doi.org/10.1093/nar/gku365){:target="_blank"}, [Ramirez et al. 2016](https://doi.org/10.1093/nar/gkw257){:target="_blank"}
UMI-tools | Modeling sequencing errors in Unique Molecular Identifiers to improve quantification accuracy | [Smith et al. 2017](https://doi.org/10.1101/gr.209601.116){:target="_blank"}
Je | A versatile suite to handle multiplexed NGS libraries with unique molecular identifiers | [Girardot at al. 2016](https://doi.org/10.1186/s12859-016-1284-2)
[RaceID]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/raceid_clustering/raceid_clustering/) | Clustering using RaceID performs clustering, outlier detection, dimensional reduction | [Josip, at al. 2018](https://doi.org/10.1038/nmeth.4662)
{: .table.table-striped .tooltable}


# Training

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

We developed [several tutorials](https://galaxyproject.github.io/training-material/topics/transcriptomics/){:target="_blank"} specifically for scRNA processing and more will come:

- [Introduction to Transcriptomics](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"}
- [Plates, Batches, and Barcodes](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-plates-batches-barcodes/slides.html){:target="_blank"}
- [Understanding Barcodes](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-umis/tutorial.html){:target="_blank"}
- [Pre-processing of Single-Cell RNA Data](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna_preprocessing/tutorial.html){:target="_blank"}


# Contributors

- [Bérénice Batut](https://github.com/bebatut)
- [Mehmet Tekman](https://github.com/mtekman)
- [Maria Doyle](https://github.com/mblue9)
- [Pablo Moreno](https://github.com/pcm32)
- [NH3 :)](https://github.com/nh3)
- [Christophe Antoniewski](https://github.com/drosofff)
- [Lea Bellenger](https://github.com/bellenger-l)
- [Jelle Scholtalbers](https://github.com/scholtalbers)
- [Charles Girardot](https://github.com/cgirardot)
- [Nicola Soranzo](https://github.com/nsoranzo)
- [Graham Etherington](https://github.com/ethering)
- [Fidel Ramirez](https://github.com/nsoranzo)
- [Bjoern Gruening](https://github.com/bgruening)


