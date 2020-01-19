---
layout: subsite-galaxy
website: https://rna.usegalaxy.eu
subdomain: rna
---

# Welcome to the RNA Galaxy workbench 2.0
{:.no_toc}

![RNA Galaxy](/assets/media/rna_workbench_2.png){:.rna-intro-right}

The RNA Galaxy workbench is a comprehensive set of analysis tools and consolidated workflows. The workbench is based on the Galaxy framework, which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation comprises more than 700 bioinformatics tools dedicated to different research areas of RNA biology, including RNA structure analysis, RNA alignment, RNA annotation, RNA-protein interaction, ribosome profiling, RNA-Seq analysis, and RNA target prediction. Out of these 700 tools about 100 tools were integrated into galaxy by us and the remaining are from the galaxy community efforts.

The workbench is developed by the [RNA Bioinformatics Center (RBC)](https://www.denbi.de/network/rna-bioinformatics-center-rbc){:target="_blank"}. This center is one of the eight service units of the [German Network for Bioinformatics Infrastructure (de.NBI)](http://www.denbi.de){:target="_blank"}, running the German [ELIXIR Node](https://www.elixir-europe.org/){:target="_blank"}.

# Cite
{:.no_toc}

If you find this resource useful, please cite [The RNA workbench 2.0: next generation RNA data analysis](https://doi.org/10.1093/nar/gkz353){:target="_blank"}.


# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training

We are passionate about training. So we are working in close collaboration with the [Galaxy Training Network (GTN)](https://galaxyproject.org/teach/gtn/){:target="_blank"} to develop training materials of data analyses based on Galaxy {% cite batut2017community %}. These materials hosted on the GTN GitHub repository are available online at [https://training.galaxyproject.org](https://training.galaxyproject.org){:target="_blank"}.

Want to learn more about RNA analyses? Take one of our guided tour or check out the following hands-on tutorials. We developed several tutorials and the remaining are from the GTN community (marked with <i class="fa fa-users" aria-hidden="true"></i>)

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy tour | Galaxy History
--- | --- | --- | --- | --- | --- | ---
Introduction to Transcriptomics | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"} |  |  |  |  |
RNA-seq counts to genes |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/rna-seq-counts-to-genes/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://figshare.com/s/1d788fd384d33e913a2a){:target="_blank"} | |  |
RNA-seq genes to pathways |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/rna-seq-genes-to-pathways/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2596382){:target="_blank"} | |  |
RNA-Seq reads to counts |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/rna-seq-reads-to-counts/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://figshare.com/s/f5d63d8c265a05618137){:target="_blank"} | |  |
Analyse unaligned ncRNAs |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=5cd167ed9e159e73){:target="_blank"} |  |
CLIP-Seq data analysis from pre-processing to motif detection <i class="fa fa-users" aria-hidden="true"></i>|  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1327423){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=f5be5bcf9b9f171c){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/joerg-fallmann/h/eclipworkflow){:target="_blank"}
De novo transcriptome reconstruction with RNA-Seq <i class="fa fa-users" aria-hidden="true"></i>|  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/de-novo/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/254485){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=f026c4b8341ff94c){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rnateam.de-novo){:target="_blank"} |
Differential abundance testing of small RNAs <i class="fa fa-users" aria-hidden="true"></i>|  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/srna/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/826906){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=7734928ebc0a2654){:target="_blank"} [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=1ffc058273ab357e){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/differential_abundance_testing_sRNAs){:target="_blank"} |
Network analysis with Heinz <i class="fa fa-users" aria-hidden="true"></i>| [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/network-analysis-with-heinz/slides.html){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/network-analysis-with-heinz/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1344105){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=12c80c5b5e2305d8){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rnateam.network-analysis-with-heinz){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-network-analysis-with-heinz){:target="_blank"}
PAR-CLIP analysis |  |  | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.2553519){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=a108b575b16e6cb9){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/joerg-fallmann/h/parclipworkflow){:target="_blank"}
Reference-based RNA-Seq data analysis |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/ref-based/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1185122){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=9c7a218993788493){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/ref_based_rna-seq){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/andrea.bagnacani/h/reference-based-rna-seq){:target="_blank"}
RNA family model construction |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=8f2d958cee428ca1){:target="_blank"} |  |
RNA-seq counts to genes |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/rna-seq-counts-to-genes/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://figshare.com/s/f5d63d8c265a05618137){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=86f89f49431b1e2e){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-rna-seq-counts-to-genes){:target="_blank"}
RNA-seq genes to pathways |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/rna-seq-genes-to-pathways/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2596382){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=3cb45f0d38e9fd42){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-rna-seq-genes-to-pathways){:target="_blank"}
RNA-Seq reads to counts |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://training.galaxyproject.org/training-material/topics/transcriptomics/tutorials/rna-seq-reads-to-counts/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://figshare.com/s/f5d63d8c265a05618137){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=e89761c4bb25d89c){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-rna-seq-reads-to-counts-1){:target="_blank"}
Scan for C/D-box sequences with segmentation-fold |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=3b717623054d5125){:target="_blank"} |  |
Small Non-coding RNA Clustering using BlockClust |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/small_ncrna_clustering/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1491876){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=c7026cd5578c8678){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-small-non-coding-rna-clustering-using-blockclust){:target="_blank"}
Visualization of RNA-Seq results with CummeRbund | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-cummerbund/slides.html){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-cummerbund/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1001880){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=17e720bee3b9104f){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rna-seq-viz-with-cummerbund){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-visualization-of-rna-seq-results-with-cummerbund){:target="_blank"}
Visualization of RNA-Seq results with Volcano Plot |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-volcanoplot/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2529117){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=fd156028b09d213a){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-visualization-of-rna-seq-results-with-volcano-plot){:target="_blank"}
Visualization of RNA-Seq results with heatmap2 |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-heatmap2/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2529926){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=4dae6d48ba08c037){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>](https://rna.usegalaxy.eu/u/videmp/h/rna-workbench-visualization-of-rna-seq-results-with-heatmap2){:target="_blank"}
ViennaRNA Introduction |  |  | [<i class="fa fa-files-o" aria-hidden="true"></i>](http://doi.org/10.5281/zenodo.2555028){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=58fd339165ded462){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rnateam.viennarna){:target="_blank"}| [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/joerg-fallmann/h/viennarnaintroduction){:target="_blank"}
{:.table.table-striped}


# Available tools

In this section we list all tools that have been integrated in the RNA workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## RNA structure prediction and analysis

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="antaRNA" %} | Possibility of inverse RNA structure folding and a specification of a GC value constraint | [Kleinkauf et al. 2015](https://doi.org/10.1093/bioinformatics/btv319){:target="_blank"}
{% include tool.html id="CoFold" %} | A thermodynamics-based RNA secondary structure folding algorithm | [Proctor and Meyer, 2015](https://doi.org/10.1093/nar/gkt174){:target="_blank"}
{% include tool.html id="Kinwalker" %} | Algorithm for cotranscriptional folding of RNAs to obtain the min. free energy structure | [Geis et al. 2008](https://doi.org/10.1016/j.jmb.2008.02.064){:target="_blank"}
{% include tool.html id="MEA" %} | Prediction of maximum expected accuracy RNA secondary structures | [Amman et al. 2013](https://doi.org/10.1007/978-3-319-02624-4_1){:target="_blank"}
{% include tool.html id="RNAshapes" %} | Structures to a tree-like domain of shapes, retaining adjacency and nesting of structural features | [Janssen and Giergerich, 2014](https://doi.org/10.1093/bioinformatics/btu649){:target="_blank"}
{% include tool.html id="RNAz" %} | Predicts structurally conserved and therm. stable RNA secondary structures in mult. seq. alignments | [Washietl et al. 2005](https://doi.org/10.1073/pnas.0409169102){:target="_blank"}
{% include tool.html id="segmentation-fold" %}| An application that predicts RNA 2D-structure with an extended version of the Zuker algorithm | -
ViennaRNA | A tool compilation for prediction and comparison of RNA secondary structures | [Lorenz et al. 2011](https://doi.org/10.1186/1748-7188-6-26){:target="_blank"}
{: .table.table-striped .tooltable}

## RNA alignment

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Compalignp" %} | An RNA counterpart of the protein specific "Benchmark Alignment Database" | [Wilm et al. 2006](https://doi.org/10.1186/1748-7188-1-19){:target="_blank"}
{% include tool.html id="LocARNA" %} | A tool for multiple alignment of RNA molecules | [Will et al. 2012](https://doi.org/10.1261/rna.029041.111){:target="_blank"}
{% include tool.html id="MAFFT" %} | A multiple sequence alignment program for unix-like operating systems | [Katoh and Standley, 2016](https://doi.org/10.1093/bioinformatics/btw108){:target="_blank"}
{% include tool.html id="RNAlien" %} | A tool for RNA family model construction | [Eggenhofer et al. 2016](https://doi.org/10.1093/nar/gkw558){:target="_blank"}
{% include tool.html id="CMV" %} | RNA family model visualisation | [Eggenhofer et al. 2018](https://doi.org/10.1093/bioinformatics/bty158){:target="_blank"}
{: .table.table-striped .tooltable}

## RNA annotation

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="ARAGORN" %} | A tool to identify tRNA and tmRNA genes | [Laslett and Canback, 2004](https://doi.org/10.1093/nar/gkh152){:target="_blank"}
{% include tool.html id="Fusion Matcher (FuMa)" %} | A tool that reports identical fusion genes based on gene-name annotations | [Hoogstrate et al. 2016](https://doi.org/10.1093/bioinformatics/btv721){:target="_blank"}
{% include tool.html id="GotohScan" %} | A search tool that finds shorter sequences in large database sequences | [Hertel et al. 2009](https://doi.org/10.1093/nar/gkn1084){:target="_blank"}
{% include tool.html id="INFERNAL" %} | A tool searching DNA sequence databases for RNA structure and sequence similarities | [Nawrocki et al. 2015](https://doi.org/10.1093/nar/gku1063){:target="_blank"}
{% include tool.html id="RNABOB" %} | A tool for fast pattern searching for RNA secondary structures | -
{% include tool.html id="RNAcode" %} | Predicts protein coding regions in a a set of homologous nucleotide sequences | [Washietl et al. 2011](https://doi.org/10.1261/rna.2536111){:target="_blank"}
{% include tool.html id="tRNAscan" %} | Searches for tRNA genes in genomic sequences | [Lowe and Eddy, 1997](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC146525/){:target="_blank"}
{% include tool.html id="RCAS" %} | A generic reporting tool for the functional analysis of transcriptome-wide regions of interest detected by high-throughput experiments | [Uyar et al.](https://www.ncbi.nlm.nih.gov/pubmed/28334930){:target="_blank"}
{: .table.table-striped .tooltable}

## RNA-protein interaction

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="AREsite2" %} | A database for AU-/GU-/U-rich elements in human and model organisms | [Fallmann et al. 2016](https://doi.org/10.1093/nar/gkv1238){:target="_blank"}
{% include tool.html id="DoRiNA" %} | A database of RNA interactions in post-transcriptional regulation | [Blin et al. 2014](https://doi.org/10.1093/nar/gku1180){:target="_blank"}
{% include tool.html id="PARalyzer" %}| An algorithm to generate a map of interacting RNA-binding proteins and their targets | [Corcoran et al. 2011](https://doi.org/10.1186/gb-2011-12-8-r79){:target="_blank"}
{% include tool.html id="Piranha" %} | A peak-caller for CLIP- and RIP-seq data | -
{: .table.table-striped .tooltable}

## RNA-RNA interaction

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="ChiRA-collapse" label="C" %}{% include tool.html id="ChiRA-map" label="h" %}{% include tool.html id="ChiRA-merge" label="i" %}{% include tool.html id="ChiRA-quantify" label="R" %}{% include tool.html id="ChiRA-extract" label="A" %} | A set of tools to analyze RNA-RNA interactome experimental data such as CLASH, CLEAR-CLIP, PARIS, LIGR-Seq etc | -
{: .table.table-striped .tooltable}


## RNA target prediction

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="TargetFinder" %} | A tool to predict small RNA binding sites on target transcripts from a sequence database | -
{: .table.table-striped .tooltable}

## RNA Seq and HTS analysis

### Preprocessing

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="FastQC" %} | A quality control tool for high throughput sequence data | -
{% include tool.html id="TrimGalore" label="Trim Galore!" %} | Automatic quality and adapter trimming as well as quality control | -
{: .table.table-striped .tooltable}

### RNA-Seq

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="BlockClust" %} | Small non-coding RNA clustering from deep sequencing read profiles | [Videm et al. 2014](https://doi.org/10.1093/bioinformatics/btu270){:target="_blank"}
{% include tool.html id="FlaiMapper" %} | A tool for computational annotation of small ncRNA-derived fragments using RNA-seq data | [Hoogstrate et al. 2015](https://doi.org/10.1093/bioinformatics/btu696){:target="_blank"}
{% include tool.html id="MiRDeep2" %} | Discovers microRNA genes by analyzing sequenced RNAs | [Friedländer et al. 2008](https://doi.org/10.1038/nbt1394){:target="_blank"}
{% include tool.html id="NASTIseq" %} | A method that incorporates the inherent variable efficiency of generating perfectly strand-specific libraries | [Li et al. 2013](https://doi.org/10.1101/gr.149310.112){:target="_blank"}
{% include tool.html id="PIPmiR" %} | An algorithm to identify novel plant miRNA genes from a combination of deep sequencing data and genomic features | [Breakfield et al. 2011](https://doi.org/10.1101/gr.123547.111){:target="_blank"}
{% include tool.html id="SortMeRNA" %} | A tool for filtering, mapping and OTU-picking NGS reads in metatranscriptomic and -genomic data | [Kopylova et al. 2011](https://doi.org/10.1093/bioinformatics/bts611){:target="_blank"}
{: .table.table-striped .tooltable}

### Read Mapping

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="HISAT2" %} | Hierarchical indexing for spliced alignment of transcripts | [Pertea et al. 2016](https://doi.org/10.1038/nprot.2016.095){:target="_blank"}
{% include tool.html id="RNA STAR" %} | Rapid spliced aligner for RNA-seq data | [Dobin et al. 2013](https://academic.oup.com/bioinformatics/article/29/1/15/272537/STAR-ultrafast-universal-RNA-seq-aligner){:target="_blank"}
{% include tool.html id="STAR-fusion" %} | Fast fusion gene finder | [Haas et al. 2017](https://www.biorxiv.org/content/early/2017/03/24/120295){:target="_blank"}
{% include tool.html id="Bowtie2" %} | Fast and sensitive read alignment | [Langmead et al. 2012](https://doi.org/10.1038/nmeth.1923){:target="_blank"}
{% include tool.html id="BWA" %} | Software package for mapping low-divergent sequences against a large reference genome | [Li and Durbin 2009](https://doi.org/10.1093/bioinformatics/btp324){:target="_blank"}, [Li and Durbin 2010](https://doi.org/10.1093/bioinformatics/btp698){:target="_blank"}
{: .table.table-striped .tooltable}

### Transcript Assembly

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="Trinity" %} | De novo transcript sequence reconstruction from RNA-Seq | [Haas et al. 2013](https://doi.org/10.1038%2Fnprot.2013.084){:target="_blank"}
{: .table.table-striped .tooltable}

### Quantification

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="featureCounts" %} | Ultrafast and accurate read summarization program | [Liao et al. 2014](http://dx.doi.org/10.1093/bioinformatics/btt656){:target="_blank"}
{% include tool.html id="htseq-count" %} | Tool for counting reads in features | [Anders et al. 2015](https://doi.org/10.1093%2Fbioinformatics%2Fbtu638){:target="_blank"}
{% include tool.html id="Sailfish" %} | Rapid Alignment-free Quantification of Isoform Abundance | [Patro et al. 2014](http://dx.doi.org/10.1038/nbt.2862){:target="_blank"}
{% include tool.html id="Salmon" %} | Fast, accurate and bias-aware transcript quantification | [Patro et al. 2017](http://dx.doi.org/10.1038/nmeth.4197){:target="_blank"}
{: .table.table-striped .tooltable}

### Differential expression analysis

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="DESeq2" %} | Differential gene expression analysis based on the negative binomial distribution | [Love et al. 2014](http://doi.org/10.1186/s13059-014-0550-8){:target="_blank"}
{: .table.table-striped .tooltable}

### Utilities

Tool | Description | Reference
--- | --- | ---
SAMtools | Utilities for manipulating alignments in the SAM format | [Heng et al. 2009](https://doi.org/10.1093/bioinformatics/btp352){:target="_blank"}
BEDTools | Utilities for genome arithmetic | [Quinlan and Hall 2010](https://doi.org/10.1093/bioinformatics/btq033){:target="_blank"}
deepTools | Tools for exploring deep-sequencing data | [Ramirez et al. 2014](https://doi.org/10.1093/nar/gku365){:target="_blank"}, [Ramirez et al. 2016](https://doi.org/10.1093/nar/gkw257){:target="_blank"}
{: .table.table-striped .tooltable}

## Ribosome profiling

Tool | Description | Reference
--- | --- | ---
RiboTaper | An analysis pipeline for Ribo-Seq experiments, exploiting the triplet periodicity of ribosomal footprints to call translated regions | [Calviello et al. 2016](https://doi.org/10.1038/nmeth.3688){:target="_blank"}
{: .table.table-striped .tooltable}

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
