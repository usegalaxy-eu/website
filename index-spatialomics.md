---
layout: subsite-galaxy
website: https://spatialomics.usegalaxy.eu
subdomain: spatialomics
---

# Welcome to the Spatial OMICS Galaxy server
{:.no_toc}

![](/assets/media/spatial_omics_banner.jpg)

The SpatialOMICS Galaxy server is a hub for all tools related to the analysis of highly multiplexed image-based spatial analysis. This subdomain is a collaborative effort of Spatial2Galaxy and the Goecks Laboratory members. We welcome any suggestions or requests for making tools related to spatial OMICS analysis available on this server. We also welcome contributions to the development of new tools, workflows or trainings!

This server currently features the individual components of the [MCMICRO](https://mcmicro.org/) pipeline, including [BaSiC](https://github.com/ohsu-comp-bio/basic-illumination) for illumination correction, [ASHLAR](https://github.com/ohsu-comp-bio/ashlar) for stitching and registration, [Coreograph](https://github.com/ohsu-comp-bio/UNetCoreograph) to dearray tissue microarrays (TMAs), [UnMICST](https://github.com/ohsu-comp-bio/UnMicst) to create cell or nucleai probability maps, [S3segmenter](https://github.com/ohsu-comp-bio/S3segmenter) for nucleai and cell segmentation and [MCQuant](https://github.com/ohsu-comp-bio/quantification) for feature quantification. More tools for image analysis outside the MCMICRO ecosystem will be added in the future.

Several spatial transcriptomics data formats and analysis tools have been integrated into Galaxy as part of the [Spatial2Galaxy CMR project](https://elixir-europe.org/how-we-work/scientific-programme/science/cmr/spatial2).

# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started?
Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Tools available
Here, we outline all the Galaxy tools that are relevant in the context of spatial omics data analysis.

## Spatial Datatypes and Utilities

The `SpatialData` datatype and utilities for reading, writing, manipulating and plotting SpatialData objects.

Tool | Description
--- | ---
{% include tool.html id="spatialdata_io" %} | Load common spatial omics formats into SpatialData
{% include tool.html id="spatialdata_operation" %} | Perform operations on SpatialData objects
{% include tool.html id="seurat_create" %} | Create Seurat objects from Xenium spatial data

## Segmentation and Preprocessing

Tools for segmenting and pre-processing the spatial transcriptomics data into SpatialData objects.

Tool | Description
--- | ---
{% include tool.html id="spapros_selection" %} | Selection of marker genes with spapros
{% include tool.html id="spapros_evaluation" %}  | Evaluation of marker genes with spapros
{% include tool.html id="vpt_segment" %} | Vizgen VPT - Segment cells and refine MERSCOPE experiments
{% include tool.html id="vpt_extract" %} | Vizgen VPT - Extract image patches from the mosaic image at the specified coordinates and size

## Spatial Downstream Analysis

Tools for spatial transcriptomics downstream analysis

Tool | Description
--- | ---
{% include tool.html id="squidpy_spatial" %} | Analyze and visualize spatial multi-omics data with Squidpy
{% include tool.html id="spacexr_rctd" %} | Robust Cell Type Decomposition, or RCTD, is a statistical method for learning cell types from spatial transcriptomics data
{% include tool.html id="spacexr_cside" %} | Cell type-Specific Inference of Differential Expression, or CSIDE, is part of the spacexr R package for learning cell type-specific differential expression from spatial transcriptomics data
{% include tool.html id="liana_methods" %} | Liana ligand_receptor inference and local bivariate spatial metrics for single-cell or spatial data
{% include tool.html id="liana_misty" %} | Liana MISTy learn spatial relationships with multi-view modelling
{% include tool.html id="liana_multi" %} | Liana multi-sample and multi-condition analysis
{% include tool.html id="liana_resource" %} | Liana Resource prior knowledge and ligand-receptor resources
{% include tool.html id="liana_utils" %} | LIANA utility functions for data transformation and preprocessing

## Cell Annotation & Feature Selection

Tools for marker gene identification and cell-type annotation

Tool | Description
--- | ---
{% include tool.html id="cosg" %} | COSG is a cosine similarity-based method for more accurate and scalable marker gene identification
{% include tool.html id="celltypist" %}| CellTypist is an automated cell type annotation tool 

## Plotting and Visualization

Tool | Description
--- | ---
{% include tool.html id="spatialdata_plot" %} | Rich static plotting from SpatialData objects
{% include tool.html id="seurat_plot" %} | Visualize spatial clusters and features from Seurat objects
{% include tool.html id="bellavista_prepare" %} | Prepare large images for bellavista spatial visualizer
{% include tool.html id="interactive_tool_bellavista" %} | Interactive visualization for imaging-based spatial transcriptomics
{% include tool.html id="squidpy_scatter" %} | Create spatial scatterplot with Squidpy
{% include tool.html id="interactive_tool_cellxgene_vip" %} | Interactive CELLxGENE VIP visualization for scRNA-seq, spatial transcriptomics, and multiome data
{% include tool.html id="interactive_tool_napari" %} | Interactive exploration and annotation of spatial omics data with napari
{% include tool.html id="vitessce_spatial" %} | Vitessce Visual Integration Tool for the Exploration of Spatial Single-Cell Experiments
{% include tool.html id="liana_plot" %} | Liana Plot visualize ligand-receptor interactions

## MCMICRO core tools

All of the Galaxy tools for MCMICRO have been developed by the [Goecks lab](https://www.ohsu.edu/people/jeremy-goecks-phd) at the [Oregon Health and Science University Computational Biology](https://github.com/ohsu-comp-bio).

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="basic_illumination" %} | BaSiC shading correction for use with Ashlar| [Peng et al. 2017](https://www.nature.com/articles/ncomms14836){:target="_blank"}
{% include tool.html id="ashlar" %} | ASHLAR: Alignment by Simultaneous Harmonization of Layer/Adjacency Registration| [Muhlich et al. 2021](https://www.biorxiv.org/content/10.1101/2021.04.20.440625v1.full){:target="_blank"}
{% include tool.html id="coreograph" %} | Dearray of Tissue Microarrays | [Coreograph Github](https://github.com/ohsu-comp-bio/UNetCoreograph){:target="_blank"}
{% include tool.html id="unmicst" %} | UnMICST - Universal Models for Identifying Cells and Segmenting Tissue| [UnMICST info](https://labsyspharm.github.io/UnMICST-info/){:target="_blank"}
{% include tool.html id="s3segmenter" %} | S3segmenter: A Matlab-based set of functions that generates single cell (nuclei and cytoplasm) label masks | [S3Segmenter github](https://github.com/HMS-IDAC/S3segmenter){:target="_blank"}
{% include tool.html id="quantification" %} | MCQuant: Single cell quantification| [MCQUant github](https://github.com/labsyspharm/quantification#single-cell-quantification){:target="_blank"}

# Workflows available

Two workflows are currently available to process your samples using the MCMICRO Galaxy pipeline:

[MCMICRO Tissue Microarray Workflow](https://github.com/ohsu-comp-bio/cycIF-galaxy/blob/master/workflows/Galaxy-Workflow-MCMICRO_TMA_v1.0.0.ga)

[MCMICRO Whole Slide Tissue Workflow](https://github.com/ohsu-comp-bio/cycIF-galaxy/blob/master/workflows/Galaxy-Workflow-MCMICRO_Tissue_v1.0.0.ga)


# Contributors
- [Florian Wünnemann](https://github.com/FloWuenne)
- [Denis Schapiro](https://github.com/DenisSch)
- [Bjoern Gruening](https://github.com/bgruening)
- [Jeremy Goecks](https://github.com/jgoecks)
- [Cameron Watson](https://github.com/CameronFRWatson)
- [Allison Creason](https://github.com/alliecreason)
- [Amirhossein Nilchi](https://github.com/nilchia)
- [Khaled Jumah](https://github.com/khaled196)
- [Nicola Soranzo](https://github.com/nsoranzo)
- [Pavankumar Videm](https://github.com/pavanvidem)


# Spatial2Galaxy Partners

| Partners | Description | People involved |
|----------|-------------|-----------------|
| [Berlin Institute of Health at Charité](https://www.hidih.org/research/computational-oncology) | Catalogue ST toolset and use cases | Naveed Ishaque
| [Erasmus Medical Center](https://www.erasmusmc.nl/en/research/groups/pathology-stubbs) | Implementation and validation of ST toolset | Andrew Stubbs
| [University of Bradford](https://www.bradford.ac.uk) | Develop Spatial2Galaxy tutorial suite and deliver training |  Krzysztof Poterlowicz
| [University of Freiburg](https://galaxyproject.org/freiburg/people/) | Development of Spatial2Galaxy portal, and support tool and workflow development | Björn Grüning
| [Earlham Institute](https://www.earlham.ac.uk/scientific-group/papatheodorou-group) | Develop Galaxy Demonstrator user case | Irene Papatheodorou
{:.table.table-striped}


# Supporters
This service is a joint project between different groups from the [Spatial2Galaxy](https://elixir-europe.org/how-we-work/scientific-programme/science/cmr/spatial2){:target="_blank"}, an ELIXIR Cellular and molecular research project, [The Goecks Laboratory](https://www.goeckslab.org/).
<table border="0"><tr><td width="25%">
<img alt="Spatial2Galaxy" src="/assets/media/spatial2galaxy.svg" />
</td>
<td with="2%"></td>
<td width="25%">
<img alt="ELIXIR" src="/assets/media/elixir_logo.png" />
</td></tr></table>
