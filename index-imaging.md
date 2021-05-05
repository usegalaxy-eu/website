---
layout: subsite-galaxy
website: https://imaging.usegalaxy.eu
subdomain: imaging
gitter: usegalaxy-eu/Lobby
---

# Welcome to the Imaging flavour of Galaxy
{:.no_toc}

The imaging flavor of Galaxy offers a set of training materials and tools that you can assemble into workflows to perform image analysis.


1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://imaging.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training 

[Several image analysis tutorials](https://training.galaxyproject.org/training-material/topics/imaging/){:target="_blank"} avalable in the [__Galaxy Training Network (GTN)__](https://training.galaxyproject.org){:target="_blank"}. If you want to know more about the GTN, check the video below!

<br>

<iframe width="560" height="315"
src="https://www.youtube.com/embed/lDqWxzWNk1k"
title="YouTube video player"
frameborder="0"
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen>
</iframe>

<br>

## Introduction to Galaxy & Image analysis

Topic | Slides | Hands-on | Input dataset | Workflows
--- | --- | --- | --- | --- | ---
Welcome and introduction to Galaxy | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/introduction/tutorials/galaxy-intro-short/slides.html){:target="_blank"}  | | |
Introduction to image analysis using Galaxy  | | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/imaging-introduction/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.3362976){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/imaging-introduction/workflows/){:target="_blank"} |
{:.table.table-striped}


## Segmentation & Feature extraction

Topic | Slides | Hands-on | Input dataset | Workflows
--- | --- | --- | --- | --- | ---
Analyse HeLa fluorescence siRNA screen | |  [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/hela-screen-analysis/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.3362976){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/hela-screen-analysis/workflows/){:target="_blank"} |
Nucleoli segmentation and feature extraction using CellProfiler  | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/tutorial-CP/slides.html#1){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/tutorial-CP/tutorial.html){:target="_blank"} |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/tutorial-CP/workflows/){:target="_blank"} |
Object tracking using CellProfiler   |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/object-tracking-using-cell-profiler/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.4567084){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/imaging/tutorials/object-tracking-using-cell-profiler/workflows/){:target="_blank"} |
{:.table.table-striped}


# Available tools

## Data access

To access your image data, you can always upload it to your history. However, since the images are usually heavy, there are connectors to existing public databases that will bring the data that you need into Galaxy.


TOOL | DESCRIPTION
--- | ---
**IDR/OMERO Download Tool** | Access to public images at the [IDR](https://idr.openmicroscopy.org/). This tool allows [access to image data in private OMERO instances](https://galaxyproject.eu/posts/2020/11/23/OMERO-post/).
{: .table.table-striped}

## Segmentation & Feature extraction

There are many tools organised into suites to segment and extract features from your images. 

TOOL | DESCRIPTION
--- | ---
**CellProfiler Suite** | CellProfiler modules available: Starting Modules (Images, Metadata, NamesAndTypes, Groups), IdentifyPrimaryObjects, OverlayOutlines, ImageMath, TrackObjects, DisplayDataOnImage, ColorToGray, GrayToColor, Tile, ConvertObjectsToImage, RelateObjects, MeasureImageIntensity, MeasureObjectIntensity, MeasureGranularity, MeasureTexture, MeasureImageAreaOccupied, MeasureImageQuality, MaskImage, MeasureObjectSizeShape,  Export to Spreadsheet, EnhanceOrSuppressFeatures, SaveImages. **Every workflow needs to start by _Starting Modules_ and end by _CellProfiler_**. The last tool takes two inputs: an image collection and a CellProfiler pipeline (assembled in previous steps of the workflow).
**ImageJ Suite** | Several plugins are available in Galaxy: Add shadow effect, Analyze skeleton, Watershed segmentation, Adjust threshold, Convert binary image to EDM, Skeletonize, Analyze particles, Operate on pixels, Add or remove noise, Find maxima, Convert to binary, Enhance contrast, Create new image, Sharpen, Find edges, Smooth. 
**bUnwarpJ (ImageJ)** | Apply raw transformation, Convert elastic transformation to raw, Apply elastic transformation, Compare elastic and raw deformation, Align two images, Compare opposite elastic deformations, Compose two raw transformations, Compare two raw deformations, Compose two elastic transformations, Compose a raw and an elastic transformation, Adapt an elastic transformation.
{: .table.table-striped}

## Mass Spectrometry Imaging

TOOL | DESCRIPTION
--- | ---
**MALDIquant Suite** |  Pre-processing, peak detection, alignment and filtering of mass spectrometry imaging data.
**Cardinal Suite** | filtering, combining, raw data exporting, quality report, ion images, spectra plots, segmentation and classification of mass spectrometry imaging data.
{: .table.table-striped}

## Biological Oscillations Analysis

TOOL | DESCRIPTION
--- | ---
**SpyBOAT** | Wavelet analysis of spatially extended oscillatory systems, represented as 3D-image stacks.
{: .table.table-striped}
## Utilities

TOOL | DESCRIPTION
--- | ---
**Convert image** | Tool to convert image formats.
{: .table.table-striped}

<br><br>

# Partners

The imaging flavour of Galaxy is a joint effort between different partners including EOSC-Life and its associated Research Infrasctuctures ([Euro-Bioimaging](https://www.eurobioimaging.eu/), [ELIXIR](https://elixir-europe.org/)), and the [University of Freiburg](https://galaxyproject.eu/freiburg/){:target="_blank"}.

The service is part of the European Galaxy server and is maintained by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"} as part of [de.NBI](https://www.denbi.de){:target="_blank"} and [ELIXIR](http://elixir-europe.org){:target="_blank"}.

<table border="0"><tr>
<td width="12%">
<img alt="EOSC-Life" src="/assets/media/EOSC_logo.png" />
</td>
<td with="8%"></td>
<td width="14%">
<img alt="Galaxy Freiburg" src="/assets/media/freiburg-galaxy.svg" />
</td>
<td with="1%"></td>
<td width="35%">
<img alt="Euro-Bioimaging" src="/assets/media/eubi_logo.png" />
</td>
<td with="1%"></td>
<td width="12%">
<img alt="ELIXIR" src="/assets/media/elixir_logo.png" />
</td>
<td with="3%"></td>
<td width="13%">
<img alt="IDR" src="/assets/media/idr_logo.png" />
</td>
</tr></table>