---
layout: subsite-galaxy
subdomain: nanopore
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

A collection of best practice and popular tools are integrated (and are expanding) in this custom Galaxy instance. The ONT-oriented and -specific subset includes:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:black;width:30%;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<div align="center">
<table class="tg">
  <tr>
    <th class="tg-0lax">

    <div align="center">
        <b>Polishing, QC and preprocessing</b><br/>
        <br/>
        {% include tool.html id="Porechop" %}, {% include tool.html id="Filtlong" %}, {% include tool.html id="Nanopolish" %},  {% include tool.html id="Poretools" %}
    </div>
    </th>
    <th class="tg-0lax" rowspan="4">
    
        <img src="/assets/media/nanogalaxy_toolkit.png" height="400px" alt="NanoGalaxy toolkit"/>
    
    </th>
  </tr>
  <tr>
    <td class="tg-0lax">
        <div align="center"><b>Genome assembly</b><br/>
        <br/>
        {% include tool.html id="Minimap2" %}, {% include tool.html id="Miniasm" %}, {% include tool.html id="Racon" %}
        <br/>
        {% include tool.html id="Racon" %}, {% include tool.html id="Flye" %}, {% include tool.html id="Unicycler" %}, {% include tool.html id="Wtdbg2" %}, {% include tool.html id="Canu" %}
        </div>
    </td>
  </tr>

  <tr>
    <td class="tg-0lax">
        <div align="center"><b>Visualisation</b><br/>
        <br/>

        {% include tool.html id="Nanoplot" %},  {% include tool.html id="Bandage" %}
        </div>
    </td>
  </tr>
  <tr>
    <td class="tg-0lax">
        <div align="center"><b>Taxonomy and metagenomics</b><br/>
        <br/>
        {% include tool.html id="PlasFlow" %},  {% include tool.html id="Staramr" %},  {% include tool.html id="Kraken2" %}

        </div>
    </td>
  </tr>


</table>
</div>




# Tutorials

We are passionate about training. So we are working in close collaboration with the 
[Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based
on Galaxy {% cite batut2017community %}. The NanoGalaxy training materials are under development and will be soon hosted on the
GTN GitHub repository [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.


# Workflows

To orchestrate tools and help users with their analyses, some best practice workflows are prepared and become available.
The workflows can be extended using similar and alternative combinations using the workflow editor.

The workflows are available in the [Shared Workflows](https://nanopore.usegalaxy.eu/workflows/list_published){:target="_top"}, with the label "***ONT***".

# Some validated workflows

|:-----------------:|:----------------------------:|:-------------------:|:------------------:|
|                   |                              |                     |                    |
|  [![NanoGalaxy Nanopolish](/assets/media/nanogalaxy-nanopolish.png)](https://nanopore.usegalaxy.eu/u/milad/w/nanopolish-variants-tutorial){:target="_top"}                  | [![NanoGalaxy Ahrens](/assets/media/nanogalaxy-ahrens.png)](https://nanopore.usegalaxy.eu/u/milad/w/ont-assembly-flye-ahrens){:target="_blank"}                                 |  [![NanoGalaxy Wick ](/assets/media/nanogalaxy-ahrens.png)](https://nanopore.usegalaxy.eu/u/milad/w/ont-assembly-flye-ahrens){:target="_blank"} | [![NanoGalaxy Kraken](/assets/media/nanogalaxy-kraken.png)](https://nanopore.usegalaxy.eu/u/milad/w/metagenomics-krakan2){:target="_top"} |
|  Basic workflows inspired by the Nanopolish tutorials | Genome assembly (Flye-based WF for highly repetitive genomes [Schmid et al. NAR 2018]) | Genome assembly (Unicycler-based WF for Klebsiella pneumoniae (Illumina and ONT) [Wick et al.  Microbial genomics 2017])  |Metagenomics: taxa classification|
| [![Galaxy workflow](https://img.shields.io/static/v1?label=workflow&message=run&color=blue)](https://nanopore.usegalaxy.eu/u/milad/w/nanopolish-variants-tutorial)        |  [![Galaxy history](https://img.shields.io/static/v1?label=history&message=view&color=blue)](https://nanopore.usegalaxy.eu/u/milad/h/ahrens-nanopore-graphmap-minimap) [![Galaxy workflow](https://img.shields.io/static/v1?label=workflow&message=run&color=blue)](https://nanopore.usegalaxy.eu/u/milad/w/ont-assembly-flye-ahrens)                            |   [![Galaxy history](https://img.shields.io/static/v1?label=history&message=view&color=blue)](https://nanopore.usegalaxy.eu/u/milad/h/wick-etal) [![Galaxy workflow](https://img.shields.io/static/v1?label=workflow&message=run&color=blue)](https://nanopore.usegalaxy.eu/u/milad/h/wick-etal)      |    [![Galaxy workflow](https://img.shields.io/static/v1?label=workflow&message=run&color=blue)](https://nanopore.usegalaxy.eu/u/milad/w/metagenomics-krakan2)           |
{:.table-striped .ont-workflow-table}




------

