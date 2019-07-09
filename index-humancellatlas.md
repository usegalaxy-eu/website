---
layout: subsite-galaxy
website: https://humancellatlas.usegalaxy.eu
subdomain: humancellatlas
---

# Welcome to the Galaxy Human Cell Atlas project
{:.no_toc}

![Human Cell Atlas](/assets/media/hca.png)

The Human Cell Atlas Galaxy setup comprises of analysis tools and workflows for the analysis of Single Cell RNA-Seq data. In includes a module that connects to the Matrix Service API of the HCA's Data Coordination Platform that enables retrieval of gene expression matrices from any data sets in the Human Cell Atlas. The instance is based on the Galaxy framework, which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

This setup aims to give users access to as much granularity as possible in terms
of the downstream analysis steps provided by the major software for
single cell data analysis: Scanpy, SC3, Scater and Seurat. For each of these tools,
this Galaxy instance has decomposed modules for each the main functionalities:
ingestion from 10x/loom, filtering (by cells or genes), scaling, normalisation,
clustering, marker genes, and dimensionality reduction, among others. In the short
term we expect to have interoperability between these tools through the Loom exchange format.
Additionally, we provide specialised viewers for single cell clustering data:
UCSC CellBrowser (currently active) and cellxgene (coming up soon).

Tools available under HCA-Single Cell section on the left where mainly brought to Galaxy by
the [Gene Expression Team](https://www.ebi.ac.uk/about/people/irene-papatheodorou){:target="_blank"}
at [EMBL-EBI](https://www.ebi.ac.uk){:target="_blank"} and the [Teichmann Team](https://www.sanger.ac.uk/science/groups/teichmann-group){:target="_blank"} at the [Wellcome Sanger Institute](https://www.sanger.ac.uk/){:target="_blank"}.


# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.


# Available tools

In this section we list all tools that have been integrated in the RNA workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## Single Cell Galaxy Tools developed for the Human Cell Atlas

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="antaRNA" %} | Possibility of inverse RNA structure folding and a specification of a GC value constraint | [Kleinkauf et al. 2015](https://doi.org/10.1093/bioinformatics/btv319){:target="_blank"}
{% include tool.html id="CoFold" %} | A thermodynamics-based RNA secondary structure folding algorithm | [Proctor and Meyer, 2015](https://doi.org/10.1093/nar/gkt174){:target="_blank"}
{% include tool.html id="Kinwalker" %} | Algorithm for cotranscriptional folding of RNAs to obtain the min. free energy structure | [Geis et al. 2008](https://doi.org/10.1016/j.jmb.2008.02.064){:target="_blank"}
{% include tool.html id="MEA" %} | Prediction of maximum expected accuracy RNA secondary structures | [Amman et al. 2013](https://doi.org/10.1007/978-3-319-02624-4_1){:target="_blank"}
{% include tool.html id="RNAshapes" %} | Structures to a tree-like domain of shapes, retaining adjacency and nesting of structural features | [Janssen and Giergerich, 2014](https://doi.org/10.1093/bioinformatics/btu649){:target="_blank"}
{% include tool.html id="RNAz" %} | Predicts structurally conserved and therm. stable RNA secondary structures in mult. seq. alignments | [Washietl et al. 2005](https://doi.org/10.1073/pnas.0409169102){:target="_blank"}
{% include tool.html id="segmentation-fold" %}| An application that predicts RNA 2D-structure with an extended version of the Zuker algorithm | -
ViennaRNA | A tool compilation for prediction and comparison of RNA secondary structures | [Lorenz et al. 2011](https://doi.org/10.1186/1748-7188-6-26){:target="_blank"}
{: .table.table-striped .tooltable}

## RNA alignment

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Compalignp" %} | An RNA counterpart of the protein specific "Benchmark Alignment Database" | [Wilm et al. 2006](https://doi.org/10.1186/1748-7188-1-19){:target="_blank"}
{% include tool.html id="LocARNA" %} | A tool for multiple alignment of RNA molecules | [Will et al. 2012](https://doi.org/10.1261/rna.029041.111){:target="_blank"}
{% include tool.html id="MAFFT" %} | A multiple sequence alignment program for unix-like operating systems | [Katoh and Standley, 2016](https://doi.org/10.1093/bioinformatics/btw108){:target="_blank"}
{% include tool.html id="RNAlien" %} | A tool for RNA family model construction | [Eggenhofer et al. 2016](https://doi.org/10.1093/nar/gkw558){:target="_blank"}
{% include tool.html id="CMV" %} | RNA family model visualisation | [Eggenhofer et al. 2018](https://doi.org/10.1093/bioinformatics/bty158){:target="_blank"}
{: .table.table-striped .tooltable}

## RNA Seq and HTS analysis

### Preprocessing

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="FastQC" %} | A quality control tool for high throughput sequence data | -
{% include tool.html id="TrimGalore" label="Trim Galore!" %} | Automatic quality and adapter trimming as well as quality control | -
{: .table.table-striped .tooltable}

### RNA-Seq

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="BlockClust" %} | Small non-coding RNA clustering from deep sequencing read profiles | [Videm et al. 2014](https://doi.org/10.1093/bioinformatics/btu270){:target="_blank"}
{% include tool.html id="FlaiMapper" %} | A tool for computational annotation of small ncRNA-derived fragments using RNA-seq data | [Hoogstrate et al. 2015](https://doi.org/10.1093/bioinformatics/btu696){:target="_blank"}
{% include tool.html id="MiRDeep2" %} | Discovers microRNA genes by analyzing sequenced RNAs | [Friedländer et al. 2008](https://doi.org/10.1038/nbt1394){:target="_blank"}
{% include tool.html id="NASTIseq" %} | A method that incorporates the inherent variable efficiency of generating perfectly strand-specific libraries | [Li et al. 2013](https://doi.org/10.1101/gr.149310.112){:target="_blank"}
{% include tool.html id="PIPmiR" %} | An algorithm to identify novel plant miRNA genes from a combination of deep sequencing data and genomic features | [Breakfield et al. 2011](https://doi.org/10.1101/gr.123547.111){:target="_blank"}
{% include tool.html id="SortMeRNA" %} | A tool for filtering, mapping and OTU-picking NGS reads in metatranscriptomic and -genomic data | [Kopylova et al. 2011](https://doi.org/10.1093/bioinformatics/bts611){:target="_blank"}
{: .table.table-striped .tooltable}

### Read Mapping

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="HISAT2" %} | Hierarchical indexing for spliced alignment of transcripts | [Pertea et al. 2016](https://doi.org/10.1038/nprot.2016.095){:target="_blank"}
{% include tool.html id="RNA STAR" %} | Rapid spliced aligner for RNA-seq data | [Dobin et al. 2013](https://academic.oup.com/bioinformatics/article/29/1/15/272537/STAR-ultrafast-universal-RNA-seq-aligner){:target="_blank"}
{% include tool.html id="STAR-fusion" %} | Fast fusion gene finder | [Haas et al. 2017](https://www.biorxiv.org/content/early/2017/03/24/120295){:target="_blank"}
{% include tool.html id="Bowtie2" %} | Fast and sensitive read alignment | [Langmead et al. 2012](https://doi.org/10.1038/nmeth.1923){:target="_blank"}
{% include tool.html id="BWA" %} | Software package for mapping low-divergent sequences against a large reference genome | [Li and Durbin 2009](https://doi.org/10.1093/bioinformatics/btp324){:target="_blank"}, [Li and Durbin 2010](https://doi.org/10.1093/bioinformatics/btp698){:target="_blank"}
{: .table.table-striped .tooltable}

### Utilities

Tool | Description | Reference
--- | --- | ---
SAMtools | Utilities for manipulating alignments in the SAM format | [Heng et al. 2009](https://doi.org/10.1093/bioinformatics/btp352){:target="_blank"}
BEDTools | Utilities for genome arithmetic | [Quinlan and Hall 2010](https://doi.org/10.1093/bioinformatics/btq033){:target="_blank"}
deepTools | Tools for exploring deep-sequencing data | [Ramirez et al. 2014](https://doi.org/10.1093/nar/gku365){:target="_blank"}, [Ramirez et al. 2016](https://doi.org/10.1093/nar/gkw257){:target="_blank"}
{: .table.table-striped .tooltable}


# Contributors

- [Pablo Moreno](https://github.com/pcm32)
- [Ni Huang](https://github.com/nh3)
- [Jonathan Manning](https://github.com/pinin4fjords)
- [Carlos Talavera-Lopez]()
- [Suhaib Mohammed]()
- [Björn Gruening]()
- [Krzysztof Polanski]()
- [Maria Doyle]()
