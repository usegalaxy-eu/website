---
layout: subsite-galaxy
---

![microGalaxy logo](/assets/media/microgalaxy-logo.png){:.sc-intro-left}

# Welcome to microGalaxy!

{:.no_toc}
<br>
**microGalaxy** is the place to go for anything microbiology in Galaxy! Whether you are analysing microbiome samples or bacterial isolates, long reads or short, shotgun or 16S, genomics transcriptomics or proteomics, this is the place to be!



<br>
# Content
{:.no_toc}

1. TOC
{:toc}


# Join the μGalaxy Community

Anybody interested in microbiology in Galaxy is welcome to join our microGalaxy interest group! <strong>Everybody is Welcome!</strong>

- Join the Discussion! [Gitter Chat](https://gitter.im/galaxyproject/microGalaxy) (also available via [Matrix]())
- Join our quarterly meetings! [Agenda and minutes](https://docs.google.com/document/d/13VjcUjStuIp7bK29e74k8Nqb7N4lmVcg1ioArEWr254/edit#)


# Workflows

Below are a list of curated Galaxy workflows for different kinds of microbial analysis. Many of these are accompanied by comprehensive [GTN Tutorials](https://training.galaxyproject.org) that will guide you through the analysis step by step.

## Microbiome

Analysis | Sequencing | GTN Tutorial | Workflow | Notes
--- | --- | --- | --- | --- | ---
Taxonomic Profiling |16S, short reads  | [View Tutorial](https://training.galaxyproject.org/training-material/topics/metagenomics/tutorials/mothur-miseq-sop/tutorial.html)             | [View Workflow](https://training.galaxyproject.org/training-material/topics/metagenomics/tutorials/mothur-miseq-sop/workflows/) | mothur SOP
Taxonomic Profiling | 16S, long reads |  [View Tutorial](https://training.galaxyproject.org/training-material/topics/metagenomics/tutorials/nanopore-16S-metagenomics/tutorial.html) |  [View Workflow](https://training.galaxyproject.org/training-material/topics/metagenomics/tutorials/nanopore-16S-metagenomics/workflows/) | Nanopore
Taxonomic Profiling, Functional Analysis | Shotgun, short reads | | [View Workflows](https://asaim.readthedocs.io/en/latest/workflows.html) | ASaiM {% cite batut2018asaim %}
AMR detection | Shotgun, plasmids, long reads | [View Tutorial]()  |
Functional Analysis | Transcriptomics | [View Tutorial]() | [View Workflow]() | ASaiM-MT {% cite mehta_asaim-mt_2021 %}
{:.table.table-striped}


## Bacterial Isolates

Organism | Analysis | Sequencing | GTN Tutorial | Workflow | Notes
--- | --- | --- | --- | --- | ---
M. tuberculosis | Variant Detection | Short reads | [View Tutorial](https://training.galaxyproject.org/training-material/topics/variant-analysis/tutorials/tb-variant-analysis/tutorial.html) | [View Workflow](https://training.galaxyproject.org/training-material/topics/variant-analysis/tutorials/tb-variant-analysis/workflows/) |
Plasmids | AMR detection | long reads, plasmids | | [View Workflows](https://erasmusmc-bioinformatics.github.io/AMR-Galaxy-workflows/) |
{:.table.table-striped}


Want to include your workflow here? Let us know!


# Tools
More than **200 tools** are avalaible for microbiome data analysis in this custom Galaxy instance:

- **General tools**
    - **Data retrieval**: EBISearch, ENASearch, SRA Tools
    - **BAM/SAM file manipulation**: SAM tools
    - **BIOM file manipulation**: BIOM-Format tools
- **Genomics tools**
    - **Quality control**: FastQC, PRINSEQ, Cutadapt, fastp, Trimmomatic, MultiQC
    - **Clustering**: CD-Hit
    - **Sorting and prediction**: SortMeRNA, FragGeneScan
    - **Mapping**: BWA, Bowtie
    - **Similarity search**: NCBI Blast+, Diamond
    - **Alignment**: HMMER3
- **Microbiota dedicated tools**
    - **Microbial**: Scoary, Prokka, Roary
    - **Metagenomics data manipulation**: VSearch, Nonpareil, DADA2
    - **Assembly**: MEGAHIT, metaSPAdes, metaQUAST, VALET, Bandage, MaxBin2
    - **Metataxonomic sequence analysis**: Mothur, QIIME, Vegan
    - **Taxonomy assignation**: MetaPhlAn, Kraken, CAT/BAT
    - **Metabolism assignation**: HUMAnN, PICRUST, InterProScan
    - **Visualization**: Export2graphlan, GraPhlAn, KRONA
    - **Metaproteomics**: MaxQuant, SearchGUI, PeptideShaker, Unipept


# Projects

Below is a list of projects that members of this community are involved in (feel free to add your own!)

Project | Description | Links
--- | --- | ---
![](https://irida.ca/assets/images/IRIDA-logo-news.png){:width="100px"}    | IRIDA: The Integrated Rapid Infectious Disease Analysis | [Website](https://irida.ca/)
![](https://www.chalmers.se/SiteCollectionImages/Institutioner/MV/Nyheter/Seq4AMRLogo200x.png){:width="100px"} | Seq4AMR: Fighting antibiotic resistance with new diagnostics | [Website](https://www.jpiamr.eu/projects/seq4amr/)
{:.table.table-striped}

If you would like to know more about any of these projects or get involved, please contact us know on the [microGalaxy Gitter channel](https://gitter.im/galaxyproject/microGalaxy).

# Resources

Resource | Description | Links
--- | --- | ---
![](https://www.jpiamr.eu/app/uploads/2021/09/JPIAMR-logo-no-tagline.png){:width="100px"} | JPIAMR: Global Coordination of Antimicrobial Resistance Research | [Website](https://www.jpiamr.eu/)
{:.table.table-striped}

<!--
# Acknowledgements

# References

{% bibliography --cited --prefix index-metagenomics --group_by none %}
-->
