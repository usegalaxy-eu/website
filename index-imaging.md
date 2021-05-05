---
layout: subsite-galaxy
website: https://imaging.usegalaxy.eu
subdomain: imaging
gitter: usegalaxy-eu/Lobby
---


<br/>
<img src="/assets/media/imaging.png" height="100px" alt="Imaging"/>

# Welcome to the Imaging flavour of Galaxy
{:.no_toc}

The imaging flavor offers a set of training materials, tools and workflows to perform image analysis.


1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://imaging.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training 

We are working in close collaboration with the [__Galaxy Training Network (GTN)__](https://training.galaxyproject.org){:target="_blank"} to develop training materials of data analyses based on Galaxy. There are [several image analysis tutorials](https://training.galaxyproject.org/training-material/topics/imaging/) avalable in the GTN...

If you want to know more about the GTN or how to become part of the Galaxy community, check the videos below!

<br>

<iframe width="560" height="315"
src="https://www.youtube.com/embed/lDqWxzWNk1k"
title="YouTube video player"
frameborder="0"
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen>
</iframe>

<iframe width="560" height="315"
src="https://www.youtube.com/embed/-1MPdxmRs8U"
title="YouTube video player"
frameborder="0"
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen></iframe>

<br>

## Introduction to Galaxy & Image Analysis

Topic | Slides | Hands-on | Input dataset | Workflows
--- | --- | --- | --- | --- | ---
Welcome and introduction to Galaxy | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/introduction/tutorials/galaxy-intro-short/slides.html){:target="_blank"}  | | |
Introduction to image analysis using Galaxy  | | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/imaging-introduction/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.3362976){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/imaging-introduction/workflows/){:target="_blank"} |
{:.table.table-striped}


## Segmentation and Feature Extraction

Topic | Slides | Hands-on | Input dataset | Workflows
--- | --- | --- | --- | --- | ---
Analyse HeLa fluorescence siRNA screen | |  [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/hela-screen-analysis/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.3362976){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/hela-screen-analysis/workflows/){:target="_blank"} |
Nucleoli segmentation and feature extraction using CellProfiler  | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/tutorial-CP/slides.html#1){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/tutorial-CP/tutorial.html){:target="_blank"} |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/tutorial-CP/workflows/){:target="_blank"} |
Object tracking using CellProfiler   |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/object-tracking-using-cell-profiler/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.4567084){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/object-tracking-using-cell-profiler/workflows/){:target="_blank"} |
{:.table.table-striped}

# Tools

Several tools are integrated in this custom Galaxy instance. They were chosen for their use in exploitation of chemical data:
## Data access:

## Data preprocessing:

   * {% include tool.html id="MALDIquant_preprocessing" label="MALDIquant preprocessing" %}
   * {% include tool.html id="MALDIquant_peak_detection" label="MALDIquant peak detection" %}
   * {% include tool.html id="cardinal_preprocessing" label="msi preprocessing" %}

## Data visualization:

   * {% include tool.html id="cardinal_quality_report" label="msi qualitycontrol" %}
   * {% include tool.html id="cardinal_mz_images" label="msi mz images" %}
   * {% include tool.html id="cardinal_spectra_plot" label="msi spectra plot" %}

## Data manipulation:

   * {% include tool.html id="cardinal_filtering" label="msi filtering" %}
   * {% include tool.html id="cardinal_combine" label="msi combine" %}
   * {% include tool.html id="cardinal_data exporter" label="msi data exporter" %}

## Statistical tools:

   * {% include tool.html id="cardinal_segmentation" label="msi segmentation" %}
   * {% include tool.html id="cardinal_classification" label="msi classification" %}

# Workflows

To orchestrate tools and help users with their analyses, several workflows are available in the [Workflow Hub](https://workflowhub.eu/search?utf8=%E2%9C%93&q=imaging).

<iframe width="560" height="315" src="https://www.youtube.com/embed/eU1753h6NIs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Partners


The imaging flavour of Galaxy is a joint effort between X, Y, and the [University of Freiburg](https://galaxyproject.eu/freiburg/){:target="_blank"}.
The service is part of the European Galaxy server and is maintained by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"} as part of [de.NBI](https://www.denbi.de){:target="_blank"} and [ELIXIR](http://elixir-europe.org){:target="_blank"}.


<table border="0"><tr>
<td width="15%">
<img alt="EOSC-Life" src="/assets/media/EOSC_logo.png" />
</td>
<td with="2%"></td>
<td width="20%">
<img alt="Galaxy Freiburg" src="/assets/media/freiburg-galaxy.svg" />
</td>
<td with="2%"></td>
<td width="35%">
<img alt="Euro-Bioimaging" src="/assets/media/eubi_logo.png" />
</td>
<td with="2%"></td>
<td width="15%">
<img alt="IDR" src="/assets/media/idr_logo.png" />
</td>
</tr></table>