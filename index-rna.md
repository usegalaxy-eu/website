---
layout: subsite-galaxy
website: https://rna.usegalaxy.eu
---

<div class="container rna-intro-header" style="">
    <div class="row">
        <div class="col-lg-12">
            <div class="rna-intro-message">
                <h1>Welcome to <bold>RNA Galaxy</bold></h1>
                <h3>The <a href="http://bgruening.github.io/galaxy-rna-workbench" target="_blank">RNA workbench</a> developed by the de.NBI RNA Bioinformatics Center</h3>
            </div>
        </div>
    </div>
</div>

# Get started
{:.no_toc}

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui) through Galaxy's user interface.

**Want to learn more about RNA analyses? Take one of our guided tour or check our tutorials**

Lesson | Slides | Hands-on | Tour
--- | --- | --- | ---
Introduction to Transcriptomics | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"} |  |  |
Reference-based RNA-Seq data analysis | | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/ref-based/tutorial.html){:target="_blank"}  | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rnateam.rnaseq){:target="_blank"}
Visualization of RNA-Seq results with CummeRbund | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-cummerbund/slides.html){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-cummerbund/tutorial.html){:target="_blank"} |
ViennaRNA Introduction | | | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rnateam.viennarna){:target="_blank"}
{:.table.table-striped}

# Content
{:.no_toc}

1. TOC
{:toc}

# About the RNA Galaxy workbench

The RNA Galaxy workbench is a comprehensive set of analysis tools and consolidated workflows. The workbench is based on the Galaxy framework, which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation comprises more than 50 bioinformatics tools dedicated to different research areas of RNA biology, including RNA structure analysis, RNA alignment, RNA annotation, RNA-protein interaction, ribosome profiling, RNA-Seq analysis, and RNA target prediction.

The workbench is developed by the RNA Bioinformatics Center (RBC). This center is one of the eight service units of the [German Network for Bioinformatics Infrastructure](http://www.denbi.de), running the German [ELIXIR Node](https://www.elixir-europe.org/).

# Available tools

In this section we list all tools that have been integrated in the RNA workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## RNA structure prediction and analysis

Tool | Description | Reference
--- | --- | ---
[antaRNA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fantarna%2Fantarna) | Possibility of inverse RNA structure folding and a specification of a GC value constraint | [Kleinkauf et al. 2015](https://doi.org/10.1093/bioinformatics/btv319){:target="_blank"}
[CoFold]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fviennarna_rnacofold) | A thermodynamics-based RNA secondary structure folding algorithm | [Proctor and Meyer, 2015](https://doi.org/10.1093/nar/gkt174){:target="_blank"}
[Kinwalker]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fkinwalker%2Frbc_kinwalker) | Algorithm for cotranscriptional folding of RNAs to obtain the min. free energy structure | [Geis et al. 2008](https://dx.doi.org/10.1016/j.jmb.2008.02.064){:target="_blank"}
MEA | Prediction of maximum expected accuracy RNA secondary structures | [Amman et al. 2013](https://dx.doi.org/10.1007/978-3-319-02624-4_1){:target="_blank"}
[RNAshapes]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnashapes%2FRNAshapes) | Structures to a tree-like domain of shapes, retaining adjacency and nesting of structural features | [Janssen and Giergerich, 2014](https://doi.org/10.1093/bioinformatics/btu649){:target="_blank"}
[RNAz]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Frnaz%2Frnaz) | Predicts structurally conserved and therm. stable RNA secondary structures in mult. seq. alignments | [Washietl et al. 2005](https://dx.doi.org/10.1073/pnas.0409169102){:target="_blank"}
[segmentation-fold]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fyhoogstrate%2Fsegmentation_fold%2Fsegmentation_fold)| An application that predicts RNA 2D-structure with an extended version of the Zuker algorithm | -
ViennaRNA | A tool compilation for prediction and comparison of RNA secondary structures | [Lorenz et al. 2011](https://dx.doi.org/10.1186/1748-7188-6-26){:target="_blank"}
{:.table.table-striped}

## RNA alignment

Tool | Description | Reference
--- | --- | ---
[Compalignp]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fcompalignp%2Fcompalignp) | An RNA counterpart of the protein specific "Benchmark Alignment Database" | [Wilm et al. 2006](https://dx.doi.org/10.1186/1748-7188-1-19){:target="_blank"}
[LocARNA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fmlocarna%2Fmlocarna) | A tool for multiple alignment of RNA molecules | [Will et al. 2012](https://dx.doi.org/10.1261/rna.029041.111)
[MAFFT]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fmafft%2Frbc_mafft) | A multiple sequence alignment program for unix-like operating systems | [Katoh and Standley, 2016](https://doi.org/10.1093/bioinformatics/btw108){:target="_blank"}
[RNAlien]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnalien) | A tool for RNA family model construction | [Eggenhofer et al. 2016](https://doi.org/10.1093/nar/gkw558){:target="_blank"}
[CMV]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%cmv) | RNA family model visualisation | [Eggenhofer et al. 2018](https://doi.org/10.1093/bioinformatics/bty158){:target="_blank"}
{:.table.table-striped}

## RNA annotation

Tool | Description | Reference
--- | --- | ---
[ARAGORN]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Ftrna_prediction%2Faragorn_trna) | A tool to identify tRNA and tmRNA genes | [Laslett and Canback, 2004](https://doi.org/10.1093/nar/gkh152){:target="_blank"}
[Fusion Matcher (FuMa)]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fyhoogstrate%2Ffuma) | A tool that reports identical fusion genes based on gene-name annotations | [Hoogstrate et al. 2016](https://doi.org/10.1093/bioinformatics/btv721){:target="_blank"}
[GotohScan]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fgotohscan%2Frbc_gotohscan) | A search tool that finds shorter sequences in large database sequences | [Hertel et al. 2009](https://doi.org/10.1093/nar/gkn1084){:target="_blank"}
[INFERNAL]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Finfernal) | A tool searching DNA sequence databases for RNA structure and sequence similarities | [Nawrocki et al. 2015](https://doi.org/10.1093/nar/gku1063){:target="_blank"}
[RNABOB]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnabob%2Frbc_rnabob) | A tool for fast pattern searching for RNA secondary structures | -
[RNAcode]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnacode%2Frbc_rnacode) | Predicts protein coding regions in a a set of homologous nucleotide sequences | [Washietl et al. 2011](https://dx.doi.org/10.1261/rna.2536111){:target="_blank"}
[RNAmmer]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Flionelguy%2Frnammer) | Predicts 5s/8s, 16s/18s, and 23s/28s ribosomal RNA in full genome sequences | [Lagesen et al. 2007](https://dx.doi.org/10.1093/nar/gkm160){:target="_blank"}
[tRNAscan]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Ftrna_prediction%2Ftrnascan) | Searches for tRNA genes in genomic sequences | [Lowe and Eddy, 1997](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC146525/){:target="_blank"}
[RCAS]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frcas%2Frcas) | A generic reporting tool for the functional analysis of transcriptome-wide regions of interest detected by high-throughput experiments | [Uyar et al.](https://www.ncbi.nlm.nih.gov/pubmed/28334930){:target="_blank"}
{:.table.table-striped}

## RNA-protein interaction

Tool | Description | Reference
--- | --- | ---
[AREsite2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Faresite2) | A database for AU-/GU-/U-rich elements in human and model organisms | [Fallmann et al. 2016](https://dx.doi.org/10.1093/nar/gkv1238){:target="_blank"}
[DoRiNA]({{ page.website }}/tool_runner/data_source_redirect?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fdorina%2Fdorina_search) | A database of RNA interactions in post-transcriptional regulation | [Blin et al. 2014](https://dx.doi.org/10.1093/nar/gku1180){:target="_blank"}
[PARalyzer]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fparalyzer%2Fparalyzer)| An algorithm to generate a map of interacting RNA-binding proteins and their targets | [Corcoran et al. 2011](https://dx.doi.org/10.1186/gb-2011-12-8-r79){:target="_blank"}
[Piranha]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fpiranha%2Fpiranha) | A peak-caller for CLIP- and RIP-seq data | -
{:.table.table-striped}

## RNA target prediction

Tool | Description | Reference
--- | --- | ---
[TargetFinder]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Ftargetfinder) | A tool to predict small RNA binding sites on target transcripts from a sequence database | -
{:.table.table-striped}

## RNA Seq and HTS analysis

### Preprocessing

Tool | Description | Reference
--- | --- | ---
[FastQC!]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Ffastqc%2Ffastqc) | A quality control tool for high throughput sequence data | -
[Trim Galore!]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Ftrim_galore%2Ftrim_galore) | Automatic quality and adapter trimming as well as quality control | -
{:.table.table-striped}

### RNA-Seq

Tool | Description | Reference
--- | --- | ---
[BlockClust]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fblockclust%2Fblockclust) | Small non-coding RNA clustering from deep sequencing read profiles | [Videm et al. 2014](https://doi.org/10.1093/bioinformatics/btu270){:target="_blank"}
[FlaiMapper]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fyhoogstrate%2Fflaimapper) | A tool for computational annotation of small ncRNA-derived fragments using RNA-seq data | [Hoogstrate et al. 2015](https://doi.org/10.1093/bioinformatics/btu696){:target="_blank"}
[MiRDeep2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fmirdeep2%2Frbc_mirdeep2) | Discovers microRNA genes by analyzing sequenced RNAs | [Friedländer et al. 2008](https://dx.doi.org/10.1038/nbt1394){:target="_blank"}
[NASTIseq]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fnastiseq)| A method that incorporates the inherent variable efficiency of generating perfectly strand-specific libraries | [Li et al. 2013](https://dx.doi.org/10.1101/gr.149310.112){:target="_blank"}
[PIPmiR]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fpipmir) | An algorithm to identify novel plant miRNA genes from a combination of deep sequencing data and genomic features | [Breakfield et al. 2011](https://dx.doi.org/10.1101/gr.123547.111){:target="_blank"}
[SortMeRNA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fsortmerna%2Fbg_sortmerna) | A tool for filtering, mapping and OTU-picking NGS reads in metatranscriptomic and -genomic data | [Kopylova et al. 2011](https://dx.doi.org/10.1093/bioinformatics/bts611){:target="_blank"}
{:.table.table-striped}

### Read Mapping

Tool | Description | Reference
--- | --- | ---
[HISAT2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fhisat2%2Fhisat) | Hierarchical indexing for spliced alignment of transcripts | [Pertea et al. 2016](https://dx.doi.org/10.1038/nprot.2016.095){:target="_blank"}
[STAR]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Frgrnastar%2Frna_star) | Rapid spliced aligner for RNA-seq data | [Dobin et al. 2013](https://academic.oup.com/bioinformatics/article/29/1/15/272537/STAR-ultrafast-universal-RNA-seq-aligner){:target="_blank"}
[STAR-fusion]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fstar_fusion%2Fstar_fusion) | Fast fusion gene finder | [Haas et al. 2017](https://www.biorxiv.org/content/early/2017/03/24/120295){:target="_blank"}
[Bowtie2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Fbowtie2%2Fbowtie2) | Fast and sensitive read alignment | [Langmead et al. 2012](https://dx.doi.org/10.1038/nmeth.1923){:target="_blank"}
[BWA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Fbwa%2Fbwa) | Software package for mapping low-divergent sequences against a large reference genome | [Li and Durbin 2009](https://dx.doi.org/10.1093/bioinformatics/btp324){:target="_blank"}, [Li and Durbin 2010](https://dx.doi.org/10.1093/bioinformatics/btp698){:target="_blank"}
{:.table.table-striped}

### Transcript Assembly

Tool | Description | Reference
--- | --- | ---
[Trinity]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Ftrinity%2Ftrinity) | De novo transcript sequence reconstruction from RNA-Seq | [Haas et al. 2013](https://dx.doi.org/10.1038%2Fnprot.2013.084){:target="_blank"}
{:.table.table-striped}

### Quantification

Tool | Description | Reference
--- | --- | ---
[featureCounts]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Ffeaturecounts%2Ffeaturecounts) | Ultrafast and accurate read summarization program | [Liao et al. 2014](http://dx.doi.org/10.1093/bioinformatics/btt656){:target="_blank"}
[htseq-count]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Flparsons%2Fhtseq_count%2Fhtseq_count) | Tool for counting reads in features | [Anders et al. 2015](https://dx.doi.org/10.1093%2Fbioinformatics%2Fbtu638){:target="_blank"}
[Sailfish]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fsailfish%2Fsailfish) | Rapid Alignment-free Quantification of Isoform Abundance | [Patro et al. 2014](http://dx.doi.org/10.1038/nbt.2862){:target="_blank"}
[Salmon]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fsalmon%2Fsalmon) | Fast, accurate and bias-aware transcript quantification | [Patro et al. 2017](http://dx.doi.org/10.1038/nmeth.4197){:target="_blank"}
{:.table.table-striped}

### Differential expression analysis

Tool | Description | Reference
--- | --- | ---
[DESeq2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fdeseq2%2Fdeseq2) | Differential gene expression analysis based on the negative binomial distribution | [Love et al. 2014](http://doi.org/10.1186/s13059-014-0550-8){:target="_blank"}
{:.table.table-striped}

### Utilities

Tool | Description | Reference
--- | --- | ---
SAMtools | Utilities for manipulating alignments in the SAM format | [Heng et al. 2009](https://doi.org/10.1093/bioinformatics/btp352){:target="_blank"}
BEDTools | Utilities for genome arithmetic | [Quinlan and Hall 2010](https://doi.org/10.1093/bioinformatics/btq033){:target="_blank"}
deepTools | Tools for exploring deep-sequencing data | [Ramirez et al. 2014](https://doi.org/10.1093/nar/gku365){:target="_blank"}, [Ramirez et al. 2016](https://doi.org/10.1093/nar/gkw257){:target="_blank"}
{:.table.table-striped}

## Ribosome profiling

Tool | Description | Reference
--- | --- | ---
[RiboTaper]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fribotaper) | An analysis pipeline for Ribo-Seq experiments, exploiting the triplet periodicity of ribosomal footprints to call translated regions | [Calviello et al. 2016](https://dx.doi.org/10.1038/nmeth.3688){:target="_blank"}
{:.table.table-striped}

# Training

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

We developed [several tutorials](https://galaxyproject.github.io/training-material/topics/transcriptomics/){:target="_blank"} and more will come:

- [Introduction to Transcriptomics](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"}
- [Reference-based RNA-Seq data analysis ](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/ref-based/tutorial.html){:target="_blank"}
- [Visualization of RNA-Seq results with CummeRbund ](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-cummerbund/tutorial.html){:target="_blank"}


# Contributors

- [Andrea Bagnacani](https://github.com/bagnacan)
- [Bérénice Batut](https://github.com/bebatut)
- [Joerg Fallmann](https://github.com/jfallmann)
- [Florian Eggenhofer](https://github.com/eggzilla)
- [Bjoern Gruening](https://github.com/bgruening)
- [Youri Hoogstrate](https://github.com/yhoogstrate)
- [Torsten Houwaart](https://github.com/TorHou)
- [Cameron Smith](https://github.com/smithcr)
- [Sebastian Will](https://github.com/s-will)
- [Markus Wolfien](https://github.com/mwolfien)
- [Dilmurat Yusuf](https://github.com/dyusuf)
- [Pavankumar Videm](https://github.com/pavanvidem)

