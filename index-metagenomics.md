---
layout: galaxy-hic
---

<img src="{{ "/assets/media/asaim_logo.png" | absolute_url }}" height="100px" alt="ASaiM logo"/> 

Welcome to **Galaxy Metagenomics** ([ASaiM](http://asaim.readthedocs.io/en/latest/)) -- a webserver to process, analyse and visualize Metagenomic and Microbiota data in general. 



## Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take <a target="_parent" href="https://metagenomics.usegalaxy.eu/tours/core.galaxy_ui">a guided tour</a> through Galaxy's user interface. 

Want to learn about metagenomics analyses? Check our [tutorials](#tutorials) or take one of our guided tour:

- <a target="_parent" href="https://metagenomics.usegalaxy.eu/tours/metagenomics-general-tutorial-amplicon">Introduction of amplicon data analyses using mothur tool suite</a>
- <a target="_parent" href="https://metagenomics.usegalaxy.eu/tours/metagenomics-general-tutorial-shotgun">Introduction to shotgun metagenomics data analyses</a>
- <a target="_parent" href="https://metagenomics.usegalaxy.eu/tours/mothur-miseq-sop">16S Microbial Analysis with Mothur MiSeq SOP</a>

Check also the standard but customizable [workflows](#workflows) available there. 

<a name="tools"></a>
## Tools

More than [200 tools](http://asaim.readthedocs.io/en/latest/tools/index.html) are integrated in this custom Galaxy instance. They were chosen for their use in exploitation of microbiota data:

- [**General tools**](http://asaim.readthedocs.io/en/latest/tools/file_meta_tools.html)
    - **Data retrieval**: EBISearch, ENASearch, SRA Tools
    - **BAM/SAM file manipulation**: SAM tools
    - **BIOM file manipulation**: BIOM-Format tools
- [**Genomics tools**](http://asaim.readthedocs.io/en/latest/tools/genomics.html)
    - **Quality control**: FastQC, PRINSEQ, Trim Galore! , Trimmomatic, MultiQC 
    - **Clustering**: CD-Hit
    - **Sorting and prediction**: SortMeRNA, FragGeneScan
    - **Mapping**: BWA, Bowtie
    - **Similarity search**: NCBI Blast+, Diamond
    - **Alignment**: HMMER3
- [**Microbiota dedicated tools**](http://asaim.readthedocs.io/en/latest/tools/microbiota.html)
    - **Metagenomics data manipulation**: VSEARCH, Nonpareil
    - **Assembly**: MEGAHIT, metaSPAdes, metaQUAST, VALET
    - **Metataxonomic sequence analysis**: Mothur, QIIME
    - **Taxonomy assignation on WGS sequences**: MetaPhlAn2, Format MetaPhlan2, Kraken
    - **Metabolism assignation**: HUMAnN2, Group HUMAnN2 to GO slim terms, Compare HUMAnN2 outputs, PICRUST, InterProScan 
    - **Combination of functional and taxonomic results**
    - **Visualization**: Export2graphlan, GraPhlAn, KRONA

<a name="tutorials"></a>
## Tutorials

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/) to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [http://training.galaxyproject.org](http://training.galaxyproject.org).

We then developed [several tutorials](http://galaxyproject.github.io/training-material/topics/metagenomics/) and more will come:

- [Analyses of metagenomics data - The global picture](https://galaxyproject.github.io/training-material/topics/metagenomics/tutorials/general-tutorial/tutorial.html)

    This tutorial introduces the amplicon and shotgun data analyses with the general principles behind and the differences.

- [16S Microbial Analysis with Mothur](https://galaxyproject.github.io/training-material/topics/metagenomics/tutorials/mothur-miseq-sop/tutorial.html)

    In this tutorial the Standard Operating Procedure (SOP) for MiSeq data, developed by the creators of the Mothur software package, is perfomed within Galaxy.

<a name="workflows"></a>
## Workflows

To orchestrate tools and help users with their analyses, several [workflows](http://asaim.readthedocs.io/en/latest/workflows.html) are available. They formally orchestrate tools in a defined order and with defined parameters, but they are customizable (tools, order, parameters).

The workflows are available in the [Shared Workflows](https://metagenomics.usegalaxy.eu/workflows/list_published), with the label "***asaim***".

### Analysis of raw metagenomic or metatranscriptomic shotgun data

The workflow quickly produces, from raw metagenomic or metatranscriptomic shotgun data, accurate and precise taxonomic assignations, wide extended functional results and taxonomically related metabolism information

![](http://asaim.readthedocs.io/en/latest/_images/main_workflow.png)

This workflow consists of

1. Processing with quality control/trimming (**FastQC** and **Trim Galore!**) and dereplication (**VSearch**)
2. Taxonomic analyses with assignation (**MetaPhlAn2**) and visualization (**KRONA**, **GraPhlAn**)
3. Functional analyses with metabolic assignation and pathway reconstruction (**HUMAnN2**)
4. Functional and taxonomic combination with developed tools combining HUMAnN2 and MetaPhlAn2 outputs

It is available with 4 versions, given the input

1. Simple files: [Single-end](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim-shotgun-workflow) or [paired-end](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim---shotgun-workflow-for-paired-end-data)
2. Collection input files: [Single-end](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim-shotgun-workflow-se-collection) or [paired-end](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim---shotgun-workflow-for-paired-end-data-collection)

### Assembly of metagenomic data

To reconstruct genomes or to get longer sequences for further analysis, microbiota data needs to be assembled, using the recently developed metagenomics assemblers.

To help in this task, two workflows have been developed using two different well-performing assemblers:

- [MEGAHIT](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim-metagenomic-assembly-with-megahit)

    It is currently the most efficent computationally assembler: it has the lowest memory and time consumption {% cite van2017assembling awad2017evaluating sczyrba2017critical %}. It produced some of the best assemblies (irrespective of sequencing coverage) with the fewest structural errors {% cite olson2017metagenomic %} and outperforms in recovering the genomes of closely related strains {% cite awad2017evaluating %}, but has a bias towards relatively low coverage genomes leading to a suboptimal assembly of high abundant community member genomes in very large datasets {% cite vollmers2017comparing %}

- [MetaSPAdes](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim-metagenomic-assembly-with-metaspades)

    It is particularly optimal for high-coverage metagenomes {% cite van2017assembling %} with the best contig metrics {% cite greenwald2017utilization %} and produces few under-collapsed/over-collapsed repeats {% cite olson2017metagenomic %}

Both workflows consists of

1. Processing with quality control/trimming (**FastQC** and **Trim Galore!**)
2. Assembly with either **MEGAHIT** or **MetaSPAdes**
3. Estimation of the assembly quality statistics with **MetaQUAST**
4. Identification of potential assembly error signature with **VALET**
5. Determination of percentage of unmapped reads with **Bowtie2** combined with **MultiQC** to aggregate the results.


### Analysis of metataxonomic data

To analyze amplicon data, the **Mothur** and **QIIME** tool suites are available there. We implemented the workflows described in tutorials of Mothur and QIIME websites, as example of amplicon data analyses as well as support for the training material. These workflows, as any workflows available there, can be adapted for a specific analysis or used as subworkflows by the users.

### Running as in EBI metagenomics

The tools used in the EBI Metagenomics pipeline are also available here and can be run as a [workflow](https://metagenomics.usegalaxy.eu/u/berenice/w/asaim-ebi-metagenomics-workflow-30) with the same steps as the [EBI Metagenomics pipeline (3.0)](https://www.ebi.ac.uk/metagenomics/pipelines/3.0).

![](http://asaim.readthedocs.io/en/latest/_images/ebi_metagenomics_workflow.png)

However, the parameters must be adjusted by the user as we could not find them in the EBI Metagenomics documentation.

## Our Data Policy

{% include data-policy.html %}

## References

{% bibliography --cited --prefix index-metagenomics --group_by none %}
