---
layout: subsite-galaxy
---


<br/>
<img src="/assets/media/nanogalaxy_logo.png" height="100px" alt="NanoGalaxy logo"/>

Welcome to **NanoGalaxy**  -- a webserver to process, analyse and visualize Oxford Nanopore Technologies (ONT) data and similar long-reads technologies.


1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://nanopore.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

Check also the standard but customizable [workflows](#workflows) available there.

# Tools
<img src="/assets/media/nanogalaxy_toolkit.png" height="400px" alt="NanoGalaxy toolkit"/>

A collection of best practice and popular tools are integrated (and are expanding) in this custom Galaxy instance. The ONT-oriented and -specific subset includes:

- **Polishing, QC and preprocessing**
    - [Nanopolish](https://nanopore.usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fnanopolish_variants%2Fnanopolish_variants%2F0.1.0){:target="_top"}, [Porechop](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fporechop%2Fporechop%2F0.2.3){:target="_top"},[Filtlong](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Ffiltlong%2Ffiltlong%2F0.2.0){:target="_top"}, [Poretools](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fporetools_qualdist%2Fporetools_qualdist%2F0.6.1a1.0){:target="_top"}
- **Genome assembly**
    - [Flye](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fflye%2Fflye%2F2.3.7){:target="_top"}, [Unicycler](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Funicycler%2Funicycler%2F0.4.7.0){:target="_top"}, [Wtdbg2](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fwtdbg%2Fwtdbg%2F1.2.8.1){:target="_top"}, Miniasm, [Racon](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fracon%2Fracon%2F1.3.1.1){:target="_top"}, [Canu](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fcanu%2Fcanu%2F1.7){:target="_top"}
- **Mapping**
    - [Minimap2](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fminimap2%2Fminimap2%2F2.17){:target="_top"}, [GraphMap](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fgraphmap_align%2Fgraphmap_align%2F0.5.2){:target="_top"}
- **Visualisation**
    - [Nanoplot](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fnanoplot%2Fnanoplot%2F1.13.0){:target="_top"}, [Bandage](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fbandage%2Fbandage_image%2F0.8.1%2Bgalaxy0){:target="_top"}
- **Taxonomy and metagenomics**
    - [Kraken2](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fkraken2%2Fkraken2%2F2.0.8_beta%2Bgalaxy0){:target="_top"}, [PlasFlow](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fplasflow%2FPlasFlow%2F1.0){:target="_top"}, [Staramr](https://nanopore.usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fnml%2Fstaramr%2Fstaramr_search%2F0.4.0){:target="_top"}



# Tutorials

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. The NanoGalaxy training materials are under development and will be soon hosted on the GTN GitHub repository [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.


# Workflows

To orchestrate tools and help users with their analyses, some best practice workflows are prepared and become available. The workflows can be extended using similar and alternative combinations using the workflow editor.

The workflows are available in the [Shared Workflows](https://nanopore.usegalaxy.eu/workflows/list_published){:target="_top"}, with the label "***ONT***".

Some validated workflows:
- Basic workflows inspired by the Nanopolish tutorials
  <br/> [workflow](https://nanopore.usegalaxy.eu/u/milad/w/nanopolish-variants-tutorial){:target="_top"}
<img src="/assets/media/nanogalaxy-nanopolish.png" width="400px" alt="NanoGalaxy Nanopolish"/>
- Genome assembly:
    - Flye-based WF for highly repetitive genomes [Schmid et al. NAR 2018]
    Shared history: https://nanopore.usegalaxy.eu/u/milad/h/ahrens-nanopore-graphmap-minimap
    <br/> [workflow](https://nanopore.usegalaxy.eu/u/milad/w/ont-assembly-flye-ahrens){:target="_blank"}
    <img src="/assets/media/nanogalaxy-ahrens.png" width="400px" alt="NanoGalaxy wf2"/>

    - Unicycler-based WF for Klebsiella pneumoniae (Illumina and ONT) [Wick et al.  Microbial genomics 2017]
    Shared history: https://nanopore.usegalaxy.eu/u/milad/h/wick-etal
- Metagenomics: taxa classification 
    <br/> [workflow](https://nanopore.usegalaxy.eu/u/milad/w/metagenomics-krakan2){:target="_top"}
    <img src="/assets/media/nanogalaxy-kraken.png" width="400px" alt="NanoGalaxy wf2"/>

