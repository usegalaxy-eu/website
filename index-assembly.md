---
layout: subsite-galaxy
website: https://assembly.usegalaxy.eu
subdomain: assembly
gitter: usegalaxy-eu/Lobby
---

![Anna's hummingbird photo courtesy of [VJAnderson](https://commons.wikimedia.org/wiki/File:Anna%27s_Hummingbird,_Washington_State_03.jpg)](/assets/media/logo_assembly.png){:.sc-intro-left}

# Welcome to Galaxy for Genome Assembly
{:.no_toc}
<br>
The __Genome Assembly Workbench__ is a comprehensive set of analysis tools and consolidated workflows to assist in Genome Assembly.
The workbench is based on the [Galaxy framework](https://galaxyproject.org){:target="_blank"},
which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

## Vertebrate Genomes Project
<br>
This workbench is also optimized to include all data, tools, and workflows associated with the __[Vertebrate Genomes Project (VGP)](https://vertebrategenomesproject.org/)__. All raw data published by the VGP is available from the remote data repository __Genome Ark__ in the data uploader. The VGP assembly workflows are available from the __Workflows__ tab within __Shared Data__. As new assemblies are generated, they will appear in __Histories__  in the __Shared Data__ tab. Currently, we have assembled **<b>23</b>** genomes.


<br>
# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take a
[__guided tour__]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# VGP assembly training

As a result of a collaboration with the VGP team, the Galaxy Training Network has made available two trainings which goal is to describe the VGP pipeline through two complementary approaches: a step-by-step version, and a workflow-focused short version. In the extended version, each of the steps required to run the VGP pipeline is descussed in detail, with particular attention to the algorithms and parameters. On the other hand, the short version provides a quick walkthrough on how the workflows can be used to rapidly assemble a genome using the VGP pipeline with the Galaxy Workflow System.

<div align="center">
<a href="https://training.galaxyproject.org/training-material/topics/assembly/tutorials/vgp_genome_assembly/tutorial.html" target="_blank"><button type="button" class="btn btn-primary btn-lg">VGP Step-by-Step Training</button></a>&nbsp;&nbsp;&nbsp;
<a href="https://training.galaxyproject.org/training-material/topics/assembly/tutorials/vgp_workflow_training/tutorial.html" target="_blank"><button type="button" class="btn btn-primary btn-lg">VGP Workflow-Focused Training</button></a>&nbsp;&nbsp;&nbsp;
<a href="https://assembly.usegalaxy.eu/u/gallardoalba/h/vgp-example-history"><button type="button" class="btn btn-primary btn-lg">Open example history</button></a>
</div>

<br>

## Additional training material

All relevant materials for [assembly-related data analysis](https://training.galaxyproject.org/training-material/search?query=assembly) can also be found within the GTN.

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy History
--- | --- | --- | --- | --- | ---
Welcome and introduction to Galaxy | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/introduction/tutorials/galaxy-intro-short/slides.html){:target="_blank"} / [<i class="fa fa-video-camera" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/videos/watch.html?v=introduction/tutorials/galaxy-intro-short/slides){:target="_blank"} | | | |
An Introduction to Genome Assembly | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/general-introduction/tutorial.html){:target="_blank"} | | | |
A deeper look into Genome Assembly algorithms | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/algorithms-introduction/slides.html){:target="_blank"} | | | |
Quality Control | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/quality-control/slides.html){:target="_blank"} / [<i class="fa fa-video-camera" aria-hidden="true"></i>](https://youtu.be/BWonTPS4zB8){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/quality-control/tutorial.html){:target="_blank"} / [<i class="fa fa-video-camera" aria-hidden="true"></i>](https://youtu.be/QJRlX2hWDKM){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://doi.org/10.5281/zenodo.61771){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/quality-control/workflows/){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/gallardoalba/h/quality-control){:target="_blank"}
Mapping | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/mapping/slides.html){:target="_blank"} / [<i class="fa fa-video-camera" aria-hidden="true"></i>](https://youtu.be/7FhHb8EV3EU){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/mapping/tutorial.html){:target="_blank"} / [<i class="fa fa-video-camera" aria-hidden="true"></i>](https://youtu.be/1wm-62E2NkY){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://doi.org/10.5281/zenodo.1324070){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/sequence-analysis/tutorials/mapping/workflows/){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/gallardoalba/h/mapping){:target="_blank"}
K-mer coverage | | | | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/u/delphine-l/w/kcov){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/delphine-l/h/kcov-1){:target="_blank"}
Salsa Scaffolding | | | | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/u/delphine-l/w/salsa-scaffolding){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/delphine-l/h/salsa-scaffolding){:target="_blank"}
Chloroplast genome assembly | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/chloroplast-assembly/tutorial.html){:target="_blank"} | | | |
De Bruijn Graph Assembly | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/debruijn-graph-assembly/tutorial.html){:target="_blank"} | | | |
Genome Assembly of MRSA using Illumina MiSeq Data | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/mrsa-illumina/tutorial.html){:target="_blank"} | | | |
Genome Assembly of MRSA using Oxford Nanopore MinION Data | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/mrsa-nanopore/tutorial.html){:target="_blank"} | | | |
Making sense of a newly assembled genome | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/ecoli_comparison/tutorial.html){:target="_blank"} | | | |
Unicycler Assembly | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/unicycler-assembly/tutorial.html){:target="_blank"} | | | |
SARS-CoV-2 assembly with removing human reads | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/assembly/tutorials/assembly-with-preprocessing/tutorial.html){:target="_blank"} | | | |
{:.table.table-striped}

<br>

If you want to know more about the GTN or how to become part of the Galaxy community, check the videos below!


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



# Partners

This service is a joint project between different groups from the [Vertebrate Genomes Project (VGP)](https://vertebrategenomesproject.org){:target="_blank"}, the [European Reference Genome Atlas project](https://vertebrategenomesproject.org/erga){:target="_blank"}, and the [Galaxy project](https://galaxyproject.org){:target="_blank"}.
The service is part of the European Galaxy server and is maintained by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"} as part of [de.NBI](https://www.denbi.de){:target="_blank"} and [ELIXIR](http://elixir-europe.org){:target="_blank"}.

<div align="center">
<table border="0">
<tr>
<td with="10%"></td>
    <td width="20%">
        <img alt="VGP" src="/assets/media/vgp_logo.png" />
    </td>
<td with="40%"></td>
    <td width="20%">
        <img alt="ERGA" src="/assets/media/erga_logo.png" />
    </td>
<td with="10%"></td>
</tr>
</table>
</div>

