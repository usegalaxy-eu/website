---
layout: subsite-galaxy
website: https://spatialomics.usegalaxy.eu
subdomain: spatialomics
---

# Welcome to the Spatial OMICS Galaxy server
{:.no_toc}

![](/assets/media/spatial_omics_banner.jpg)

The SpatialOMICS Galaxy server is a hub for all tools related to the analysis of highly multiplexed image-based spatial analysis. This subdomain is a collaborative effort and we welcome any suggestions or requests for making tools related to spatia OMICS analysis available on this server. We also welcome contributions to the development of new tools, workflows or trainings!


This server currently features the individual components of the [MCMICRO](https://mcmicro.org/) pipeline, including [BaSiC](https://github.com/ohsu-comp-bio/basic-illumination) for illumination correction, [ASHLAR](https://github.com/ohsu-comp-bio/ashlar) for stitching and registration, [Coreograph](https://github.com/ohsu-comp-bio/UNetCoreograph) to dearray tissue microarrays (TMAs), [UnMICST](https://github.com/ohsu-comp-bio/UnMicst) to create cell or nucleai probability maps, [S3segmenter](https://github.com/ohsu-comp-bio/S3segmenter) for nucleai and cell segmentation and [MCQuant](https://github.com/ohsu-comp-bio/quantification) for feature quantification. More tools for image analysis outside the MCMICRO ecosystem will be added in the future.

# Content
{:.no_toc}

1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started?
Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Tools available

## Spatial Datatypes and Utilities

The SpatialData datatype and utilities for reading, writing, manipulating and plotting SpatialData objects have been developed as part of [Spatial2Galaxy CMR project](https://elixir-europe.org/how-we-work/scientific-programme/science/cmr/spatial2).

Tool | Description
--- | ---
{% include tool.html id="spatialdata_io" %} | Load common spatial omics formats into SpatialData
{% include tool.html id="spatialdata_operation" %} | Perform operations on SpatialData objects
{% include tool.html id="seurat_create" %} | Create Seurat objects from Xenium spatial data

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
- [Pavankumar Videm](https://github.com/pavanvidem)


# Spatial2Galaxy Partners

| Partners | Description | People involved |
|----------|-------------|-----------------|
| [Erasmus Medical Center](https://www.erasmusmc.nl/en/research/groups/pathology-stubbs) | Example description | Andrew Stubbs
| [Berlin Institute of Health at Charité](https://www.hidih.org/research/computational-oncology) | Example description | Naveed Ishaque
| [University of Bradford](https://www.bradford.ac.uk) | Example description |  Krzysztof Poterlowicz
| [University of Freiburg](https://usegalaxy-eu.github.io/people) | Example description | Björn Grüning
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
