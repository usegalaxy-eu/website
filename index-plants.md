---
layout: subsite-galaxy
website: https://plants.usegalaxy.eu
subdomain: plants
gitter: usegalaxy-eu/Lobby
---

![Plant Analysis on Galaxy](/assets/media/logo_plants.svg){:.sc-intro-left}

# Welcome to Galaxy for Plant Biology
{:.no_toc}

The Plant Anaylsis Workbench is a comprehensive set of analysis tools and consolidated workflows. The workbench is based on the [Galaxy framework](https://galaxyproject.org){:target="_blank"},
which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

This service is a joint project between different groups from the [DataPLANT](https://nfdi4plants.github.io/){:target="_blank"}, the [BioDATEN](https://portal.biodaten.info/){:target="_blank"}, [VIB](https://vib.be/vib-ugent-center-plant-systems-biology){:target="_blank"}, [IPK](https://www.ipk-gatersleben.de/){:target="_blank"}, and the [University of Freiburg](https://galaxyproject.eu/freiburg/){:target="_blank"}.
The server is part if the European Galaxy server and is maintained by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"} as part of [de.NBI](https://www.denbi.de){:target="_blank"} and [ELIXIR](http://elixir-europe.org){:target="_blank"}.


# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training and Workshops

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

## Tutorials

Some relevant tutorials for the analysis of plant-related data are:

- [Chloroplast genome assembly](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/chloroplast-assembly/tutorial.html)

## Workshops

We will be hosting a [Plant Transcriptome Analysis Workshop](https://docs.google.com/document/d/1Y5MqYmMxFCy7PDImYYuHLhgCKVV7MjoGMr22G2U68Ec/preview#) from the 19th to the 23rd of April. Please [register](https://docs.google.com/forms/d/e/1FAIpQLSdZZ0-_8BhZgcOdUm1jPZNpGPjN9tFlBfrd-sMptO24nXkS-Q/viewform) whilst spots are still open!

## Material

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy History 
--- | --- | --- | --- | --- | --- 
Welcome and introduction to Galaxy | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/introduction/tutorials/galaxy-intro-short/slides.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/videos/watch.html?v=introduction/tutorials/galaxy-intro-short/slides){:target="_blank"} | | | |
An Introduction to Transcriptomics | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"} | | | |
Quality Control | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/quality-control/slides.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://youtu.be/BWonTPS4zB8){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/quality-control/tutorial.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://youtu.be/QJRlX2hWDKM){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://doi.org/10.5281/zenodo.61771){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/quality-control/workflows/){:target="_blank"} |
Mapping | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/mapping/slides.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://youtu.be/7FhHb8EV3EU){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/mapping/tutorial.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://youtu.be/1wm-62E2NkY){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://doi.org/10.5281/zenodo.1324070){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/mapping/workflows/){:target="_blank"} |
mRNA differential expression analysis | . | . | . | . | .
miRNA differential expression and target prediction analysis | . | . | . | . | .
An introduction to single-cell RNA-seq data analysis | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/scrna-intro/slides.html){:target="_blank"} | | | |
Understanding Barcodes | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/scrna-plates-batches-barcodes/slides.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](XXXXXXWAITING_ON_PR_MERGEXXXXXXX){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-umis/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2573177){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=d7aa4c258e2edc95){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/understanding-barcodes){:target="_blank"}
Pre-processing of 10X Single-Cell RNA Datasets |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-preprocessing-tenx/tutorial.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://youtu.be/vNBNFkF0L4U){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/3457880){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=d79309343e2a5d62){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/preprocessing-of-10x-singlecell-rna-datasets){:target="_blank"}
Clustering 3K PBMCs with ScanPy | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/scrna-scanpy-pbmc3k/slides.html){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-scanpy-pbmc3k/tutorial.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](https://www.youtube.com/watch?v=nefB35Bi1l4){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/3581213){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=921cab3e6faf30be){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/clustering-3k-pbmcs-with-scanpy){:target="_blank"}
Analysis of plant scRNA-Seq data using ScanPy |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/scrna-plant/tutorial.html){:target="_blank"} [<i class="fa fa-video" aria-hidden="true"></i>](XXXXXXWAITING_ON_YOUTUBE_LINKXXXXXXX){:target="_blank"}| [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/4597857){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=d70dc4cfeedb690b){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/mehmet-tekman/h/analysis-of-plant-scrna-seq-data-with-scanpy){:target="_blank"}
{:.table.table-striped}

# Partners

<table border="0"><tr><td width="20%">
<img alt="DataPLANT" src="/assets/media/DataPLANT_logo_colour.svg" />
</td>
<td with="2%"></td>
<td width="18%">
<img alt="BioDATEN" src="/assets/media/biodaten_logo.png" />
</td>
<td with="2%"></td>
<td width="18%">
<img alt="VIB" src="/assets/media/vib_rf_plant_systems_biology_rgb_pos.png" />
</td>
<td with="2%"></td>
<td width="18%">
<img alt="Technische Universität Kaiserslautern" src="/assets/media/tu_kaiserslautern.svg" />
</td>
<td with="2%"></td>
<td width="18%">
<img alt="IPK" src="/assets/media/ipklogo.png" />
</td></tr></table>

# Citation

Please add the following when using the [plants.usegalaxy.eu](https://plants.usegalaxy.eu) Galaxy portal:

*The Galaxy server that was used for some calculations is in part funded by Collaborative Research Centre 992 Medical Epigenetics (DFG grant SFB 992/1 2012) and
German Federal Ministry of Education and Research (BMBF grants 031 A538A/A538C RBC, 031L0101B/031L0101C de.NBI-epi, 031L0106 de.STAIR (de.NBI)).*

More information on [how to cite Galaxy](https://galaxyproject.org/citing-galaxy/).
