---
layout: subsite-galaxy
website: https://humancellatlas.usegalaxy.eu
subdomain: humancellatlas
---

# Welcome to the Galaxy Human Cell Atlas project
{:.no_toc}

![Human Cell Atlas](/assets/media/hca.png)

The [Human Cell Atlas](https://www.humancellatlas.org){:target="_blank"} Galaxy setup comprises of analysis tools and workflows for the analysis of Single Cell RNA-Seq data. It includes a module that connects to the Matrix Service API of the HCA's Data Coordination Platform that enables retrieval of gene expression matrices from any data sets in the Human Cell Atlas. The instance is based on the Galaxy framework, which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

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

# Available Workflows

Workflow | Description
--- | ---
[Human Cell Atlas - Scanpy - CellBrowser](https://humancellatlas.usegalaxy.eu/u/pmoreno/w/humancellatlas-scanpy-cellbrowser){:target="_blank"} | Retrieve data from the Human Cell Atlas matrix service, analysis with Scanpy and visualisation with UCSC CellBrowser
[EBI Single Cell Expression Atlas - Scanpy - CellBrowser](https://humancellatlas.usegalaxy.eu/u/pmoreno/w/atlas-scanpy-cellbrowser-imported-from-uploaded-file){:target="_blank"} | Retrieve expression matrices from Single Cell Expression Atlas, analysis with Scanpy and visualisation with UCSC CellBrowser
[EBI Single Cell Expression Atlas Scanpy Prod 1.3](https://humancellatlas.usegalaxy.eu/u/pmoreno/w/scanpy-prod-13-smart-imported-from-uploaded-file){:target="_blank"} | Workflow used for clustering data in the [release 6](https://www.ebi.ac.uk/gxa/sc/release-notes.html){:target="_blank"} of [Single Cell Expression Atlas](https://www.ebi.ac.uk/gxa/sc/home){:target="_blank"}

# Available tools

In this section we list all tools that have been integrated in the RNA workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## Single Cell Galaxy Tools developed for the Human Cell Atlas

### Data retrieval from Single Cell data Repositories

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="hca_matrix_downloader" %} | Human Cell Atlas Matrix Downloader retrieves expression matrices and metadata from the Human Cell Atlas. | [Regev et al. 2018](https://arxiv.org/abs/1810.05192){:target="_blank"}
{% include tool.html id="retrieve_scxa" %} | EBI SCXA Data Retrieval downloads expression matrices and metadata from the EBI Single Cell Expression Atlas (SCXA) | [Papatheodorou et al. 2018](https://doi.org/10.1093/nar/gkx1158){:target="_blank"}
{: .table.table-striped .tooltable}

10x files produced by these tools can be consumed by 10x reader modules in the tools below.

### Visualisation

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="ucsc_cell_browser" %} | UCSC Cell Browser displays single-cell clusterized data in an interactive web application. | [CIT_ucsc_CIT](LINK_ucsc_LINK){:target="_blank"}


### Scanpy

Granular tools for accessing the main Scanpy functionalities.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="scanpy_read_10x" %} | Scanpy Read10x into hdf5 object handled by scanpy | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_filter_genes" %} | Scanpy FilterGenes based on counts and numbers of cells expressed | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_filter_cells" %} | Scanpy FilterCells based on counts and numbers of genes expressed | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_normalise_data" %} | Scanpy NormaliseData to make all cells having the same total expression | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_find_variable_genes" %} | Scanpy FindVariableGenes based on normalised dispersion of expression | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_scale_data" %} | Scanpy ScaleData to make expression variance the same for all genes | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_run_pca" %} | Scanpy RunPCA for dimensionality reduction | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_compute_graph" %} | Scanpy ComputeGraph to derive kNN graph | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_find_cluster" %} | Scanpy FindCluster based on community detection on KNN graph | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_find_markers" %} | Scanpy FindMarkers to find differentially expressed genes between groups | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_run_tsne" %} | Scanpy RunTSNE visualise cell clusters using tSNE | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{% include tool.html id="scanpy_run_umap" %} | Scanpy RunUMAP visualise cell clusters using UMAP | [Wolf et al. 2018](https://doi.org/10.1186/s13059-017-1382-0){:target="_blank"}
{: .table.table-striped .tooltable}

### Seurat

Granular tools for accessing the main Seurat functionalities. These tools received contributions from Maria Doyle [@mblue9](https://github.com/mblue9).

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="seurat_read10x" %} | Seurat Read10x Loads 10x data into a serialized seurat R object | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_create_seurat_object" %} | Seurat CreateSeuratObject create a Seurat object | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_filter_cells" %} | Seurat FilterCells filter cells in a Seurat object | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_normalise_data" %} | Seurat NormaliseData normalise data | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_find_variable_genes" %} | Seurat FindVariableGenes identify variable genes | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_scale_data" %} | Seurat ScaleData scale and center genes | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_run_pca" %} | Seurat RunPCA run a PCA dimensionality reduction | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_find_clusters" %} | Seurat FindClusters find clusters of cells | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_find_markers" %} | Seurat FindMarkers find markers (differentially expressed genes) | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_dim_plot" %} | Seurat Plot dimension reduction graphs the output of a dimensional reduction technique (PCA by default). Cells are colored by their identity class. | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_run_tsne" %} | Seurat RunTSNE run t-SNE dimensionality reduction | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{% include tool.html id="seurat_export_cellbrowser" %} | Seurat Export2CellBrowser produces files for UCSC CellBrowser import. | [Satija et al. 2015](https://doi.org/10.1038/nbt.3192){:target="_blank"}
{: .table.table-striped .tooltable}

### Scater

Granular tools for accessing the main Scater functionalities. Normally used in combination with SC3.

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="scater_read_10x_results" %} | Scater read 10x data Loads 10x data into a serialized scater R object | [McCarthy et al. 2017](https://doi.org/10.1093/bioinformatics/btw777){:target="_blank"}
{% include tool.html id="scater_calculate_qc_metrics" %} | Scater CalculateQcMetrics based on expression values and experiment information | [McCarthy et al. 2017](https://doi.org/10.1093/bioinformatics/btw777){:target="_blank"}
{% include tool.html id="scater_filter" %} | Scater Filter cells and genes based on pre-calculated stats and QC metrics | [McCarthy et al. 2017](https://doi.org/10.1093/bioinformatics/btw777){:target="_blank"}
{% include tool.html id="scater_is_outlier" %} | Scater DetectOutlier cells based on expression metrics | [McCarthy et al. 2017](https://doi.org/10.1093/bioinformatics/btw777){:target="_blank"}
{% include tool.html id="scater_calculate_cpm" %} | Scater CalculateCPM from raw counts | [McCarthy et al. 2017](https://doi.org/10.1093/bioinformatics/btw777){:target="_blank"}
{% include tool.html id="scater_normalize" %} | Scater Normalise expression values by library size in log2 scale | [McCarthy et al. 2017](https://doi.org/10.1093/bioinformatics/btw777){:target="_blank"}
{: .table.table-striped .tooltable}


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
