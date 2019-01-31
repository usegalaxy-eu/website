---
layout: subsite-galaxy
website: https://rna.usegalaxy.eu
---

<div class="container rna-intro-header" style="">
    <div class="row">
        <div class="col-lg-12">
            <div class="rna-intro-message">
                <h1>Welcome to <bold>the RNA Galaxy</bold></h1>
                <h3>The <a href="http://bgruening.github.io/galaxy-rna-workbench" target="_blank">RNA workbench</a> developed by the de.NBI RNA Bioinformatics Center</h3>
            </div>
        </div>
    </div>
</div>

# About the RNA Galaxy workbench
{:.no_toc}

The RNA Galaxy workbench is a comprehensive set of analysis tools and consolidated workflows. The workbench is based on the Galaxy framework, which guarantees simple access, easy extension, flexible adaption to personal and security needs, and sophisticated analyses independent of command-line knowledge.

The current implementation comprises more than 50 bioinformatics tools dedicated to different research areas of RNA biology, including RNA structure analysis, RNA alignment, RNA annotation, RNA-protein interaction, ribosome profiling, RNA-Seq analysis, and RNA target prediction.

The workbench is developed by the RNA Bioinformatics Center (RBC). This center is one of the eight service units of the [German Network for Bioinformatics Infrastructure](http://www.denbi.de), running the German [ELIXIR Node](https://www.elixir-europe.org/).

# Content
{:.no_toc}

1. TOC
{:toc}

# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

**Want to learn more about RNA analyses? Take one of our guided tour or check out the following hands-on tutorials from [The Galaxy Training Network](https://galaxyproject.github.io/training-material/){:target=_"blank"}.**

Lesson | Slides | Hands-on | Input dataset | Workflows | Galaxy tour | Galaxy History
--- | --- | --- | --- | --- | --- | ---
Introduction to Transcriptomics | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html){:target="_blank"} |  |  |  |  |
Analyse unaligned ncRNAs |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=5cd167ed9e159e73){:target="_blank"} |  |
CLIP-Seq data analysis from pre-processing to motif detection |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1327423){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=f5be5bcf9b9f171c){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/joerg-fallmann/h/eclipworkflow){:target="_blank"}
De novo transcriptome reconstruction with RNA-Seq |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/de-novo/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/254485){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=f026c4b8341ff94c){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/transcriptomics-denovo-assembly){:target="_blank"} |
Differential abundance testing of small RNAs |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/srna/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/826906){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=7734928ebc0a2654){:target="_blank"} [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=1ffc058273ab357e){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/differential_abundance_testing_sRNAs){:target="_blank"} |
Network analysis with Heinz | [<i class="fa fa-slideshare" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/network-analysis-with-heinz/slides.html){:target="_blank"} | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/network-analysis-with-heinz/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1344105){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=12c80c5b5e2305d8){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/network-analysis-with-heinz){:target="_blank"} |
PAR-CLIP analysis |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=a108b575b16e6cb9){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/joerg-fallmann/h/parclipworkflow){:target="_blank"}
Reference-based RNA-Seq data analysis |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/ref-based/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1185122){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=9c7a218993788493){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/ref_based_rna-seq){:target="_blank"} |
RNA family model construction |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=8f2d958cee428ca1){:target="_blank"} |  |
Scan for C/D-box sequences with segmentation-fold |  |  |  | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=3b717623054d5125){:target="_blank"} |  |
Small Non-coding RNA Clustering using BlockClust |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/small_ncrna_clustering/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1491876){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=c7026cd5578c8678){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-small-non-coding-rna-clustering-using-blockclust){:target="_blank"}
Visualization of RNA-Seq results with CummeRbund |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-cummerbund/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/1001880){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=17e720bee3b9104f){:target="_blank"} | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rna-seq-viz-with-cummerbund){:target="_blank"} | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-visualization-of-rna-seq-results-with-cummerbund){:target="_blank"}
Visualization of RNA-Seq results with Volcano Plot |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-volcanoplot/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2529117){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=fd156028b09d213a){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}/u/videmp/h/rna-workbench-visualization-of-rna-seq-results-with-volcano-plot){:target="_blank"}
Visualization of RNA-Seq results with heatmap2 |  | [<i class="fa fa-laptop" aria-hidden="true"></i>](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/rna-seq-viz-with-heatmap2/tutorial.html){:target="_blank"} | [<i class="fa fa-files-o" aria-hidden="true"></i>](https://zenodo.org/record/2529926){:target="_blank"} | [<i class="fa fa-share-alt" aria-hidden="true"></i>]({{ page.website }}/workflows/run?id=4dae6d48ba08c037){:target="_blank"} |  | [<i class="fa fa-list-ul" aria-hidden="true"></i>](https://rna.usegalaxy.eu/u/videmp/h/rna-workbench-visualization-of-rna-seq-results-with-heatmap2){:target="_blank"}
ViennaRNA Introduction | | | | | [<i class="fa fa-magic" aria-hidden="true"></i>]({{ page.website }}/tours/rnateam.viennarna){:target="_blank"}| [<i class="fa fa-list-ul" aria-hidden="true"></i>]({{ page.website }}//u/joerg-fallmann/h/viennarnaintroduction){:target="_blank"}
{:.table.table-striped}

<div id="rna-tooltable" markdown="1">

# Available tools

In this section we list all tools that have been integrated in the RNA workbench. The list is likely to grow as soon as further tools and workflows are contributed. To ease readability, we divided them into categories.

## RNA structure prediction and analysis

Tool | Description | Reference
--- | --- | ---
[antaRNA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fantarna%2Fantarna){:target="_top"} | Possibility of inverse RNA structure folding and a specification of a GC value constraint | [Kleinkauf et al. 2015](https://doi.org/10.1093/bioinformatics/btv319){:target="_blank"}
CoFold | A thermodynamics-based RNA secondary structure folding algorithm | [Proctor and Meyer, 2015](https://doi.org/10.1093/nar/gkt174){:target="_blank"}
[Kinwalker]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fkinwalker%2Frbc_kinwalker){:target="_top"} | Algorithm for cotranscriptional folding of RNAs to obtain the min. free energy structure | [Geis et al. 2008](https://doi.org/10.1016/j.jmb.2008.02.064){:target="_blank"}
MEA | Prediction of maximum expected accuracy RNA secondary structures | [Amman et al. 2013](https://doi.org/10.1007/978-3-319-02624-4_1){:target="_blank"}
[RNAshapes]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnashapes%2FRNAshapes){:target="_top"} | Structures to a tree-like domain of shapes, retaining adjacency and nesting of structural features | [Janssen and Giergerich, 2014](https://doi.org/10.1093/bioinformatics/btu649){:target="_blank"}
[RNAz]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Frnaz%2Frnaz){:target="_top"} | Predicts structurally conserved and therm. stable RNA secondary structures in mult. seq. alignments | [Washietl et al. 2005](https://doi.org/10.1073/pnas.0409169102){:target="_blank"}
[segmentation-fold]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fyhoogstrate%2Fsegmentation_fold%2Fsegmentation_fold){:target="_top"}| An application that predicts RNA 2D-structure with an extended version of the Zuker algorithm | -
ViennaRNA | A tool compilation for prediction and comparison of RNA secondary structures | [Lorenz et al. 2011](https://doi.org/10.1186/1748-7188-6-26){:target="_blank"}
{:.table.table-striped}

## RNA alignment

Tool | Description | Reference
--- | --- | ---
[Compalignp]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fcompalignp%2Fcompalignp){:target="_top"} | An RNA counterpart of the protein specific "Benchmark Alignment Database" | [Wilm et al. 2006](https://doi.org/10.1186/1748-7188-1-19){:target="_blank"}
[LocARNA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fmlocarna%2Fmlocarna){:target="_top"} | A tool for multiple alignment of RNA molecules | [Will et al. 2012](https://doi.org/10.1261/rna.029041.111){:target="_blank"}
[MAFFT]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fmafft%2Frbc_mafft){:target="_top"} | A multiple sequence alignment program for unix-like operating systems | [Katoh and Standley, 2016](https://doi.org/10.1093/bioinformatics/btw108){:target="_blank"}
[RNAlien]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnalien%2FRNAlien){:target="_top"} | A tool for RNA family model construction | [Eggenhofer et al. 2016](https://doi.org/10.1093/nar/gkw558){:target="_blank"}
[CMV]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fcmv%2Fcmv){:target="_top"} | RNA family model visualisation | [Eggenhofer et al. 2018](https://doi.org/10.1093/bioinformatics/bty158){:target="_blank"}
{:.table.table-striped}

## RNA annotation

Tool | Description | Reference
--- | --- | ---
[ARAGORN]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Ftrna_prediction%2Faragorn_trna){:target="_top"} | A tool to identify tRNA and tmRNA genes | [Laslett and Canback, 2004](https://doi.org/10.1093/nar/gkh152){:target="_blank"}
[Fusion Matcher (FuMa)]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fyhoogstrate%2Ffuma%2Ffuma){:target="_top"} | A tool that reports identical fusion genes based on gene-name annotations | [Hoogstrate et al. 2016](https://doi.org/10.1093/bioinformatics/btv721){:target="_blank"}
[GotohScan]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fgotohscan%2Frbc_gotohscan){:target="_top"} | A search tool that finds shorter sequences in large database sequences | [Hertel et al. 2009](https://doi.org/10.1093/nar/gkn1084){:target="_blank"}
INFERNAL | A tool searching DNA sequence databases for RNA structure and sequence similarities | [Nawrocki et al. 2015](https://doi.org/10.1093/nar/gku1063){:target="_blank"}
[RNABOB]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnabob%2Frbc_rnabob){:target="_top"} | A tool for fast pattern searching for RNA secondary structures | -
[RNAcode]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frnacode%2Frbc_rnacode){:target="_top"} | Predicts protein coding regions in a a set of homologous nucleotide sequences | [Washietl et al. 2011](https://doi.org/10.1261/rna.2536111){:target="_blank"}
[tRNAscan]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Ftrna_prediction%2Ftrnascan){:target="_top"} | Searches for tRNA genes in genomic sequences | [Lowe and Eddy, 1997](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC146525/){:target="_blank"}
[RCAS]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Frcas%2Frcas){:target="_top"} | A generic reporting tool for the functional analysis of transcriptome-wide regions of interest detected by high-throughput experiments | [Uyar et al.](https://www.ncbi.nlm.nih.gov/pubmed/28334930){:target="_blank"}
{:.table.table-striped}

## RNA-protein interaction

Tool | Description | Reference
--- | --- | ---
AREsite2 | A database for AU-/GU-/U-rich elements in human and model organisms | [Fallmann et al. 2016](https://doi.org/10.1093/nar/gkv1238){:target="_blank"}
[DoRiNA]({{ page.website }}/tool_runner/data_source_redirect?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fdorina%2Fdorina_search){:target="_top"} | A database of RNA interactions in post-transcriptional regulation | [Blin et al. 2014](https://doi.org/10.1093/nar/gku1180){:target="_blank"}
[PARalyzer]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fparalyzer%2Fparalyzer){:target="_top"}| An algorithm to generate a map of interacting RNA-binding proteins and their targets | [Corcoran et al. 2011](https://doi.org/10.1186/gb-2011-12-8-r79){:target="_blank"}
[Piranha]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fpiranha%2Fpiranha){:target="_top"} | A peak-caller for CLIP- and RIP-seq data | -
{:.table.table-striped}

## RNA target prediction

Tool | Description | Reference
--- | --- | ---
TargetFinder | A tool to predict small RNA binding sites on target transcripts from a sequence database | -
{:.table.table-striped}

## RNA Seq and HTS analysis

### Preprocessing

Tool | Description | Reference
--- | --- | ---
[FastQC!]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Ffastqc%2Ffastqc){:target="_top"} | A quality control tool for high throughput sequence data | -
[Trim Galore!]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Ftrim_galore%2Ftrim_galore){:target="_top"} | Automatic quality and adapter trimming as well as quality control | -
{:.table.table-striped}

### RNA-Seq

Tool | Description | Reference
--- | --- | ---
[BlockClust]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fblockclust%2Fblockclust){:target="_top"} | Small non-coding RNA clustering from deep sequencing read profiles | [Videm et al. 2014](https://doi.org/10.1093/bioinformatics/btu270){:target="_blank"}
[FlaiMapper]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fyhoogstrate%2Fflaimapper%2Fflaimapper){:target="_top"} | A tool for computational annotation of small ncRNA-derived fragments using RNA-seq data | [Hoogstrate et al. 2015](https://doi.org/10.1093/bioinformatics/btu696){:target="_blank"}
[MiRDeep2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fmirdeep2%2Frbc_mirdeep2){:target="_top"} | Discovers microRNA genes by analyzing sequenced RNAs | [Friedländer et al. 2008](https://doi.org/10.1038/nbt1394){:target="_blank"}
[NASTIseq]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fnastiseq%2Fnastiseq){:target="_top"} | A method that incorporates the inherent variable efficiency of generating perfectly strand-specific libraries | [Li et al. 2013](https://doi.org/10.1101/gr.149310.112){:target="_blank"}
[PIPmiR]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fpipmir%2Fpipmir){:target="_top"} | An algorithm to identify novel plant miRNA genes from a combination of deep sequencing data and genomic features | [Breakfield et al. 2011](https://doi.org/10.1101/gr.123547.111){:target="_blank"}
[SortMeRNA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Frnateam%2Fsortmerna%2Fbg_sortmerna){:target="_top"} | A tool for filtering, mapping and OTU-picking NGS reads in metatranscriptomic and -genomic data | [Kopylova et al. 2011](https://doi.org/10.1093/bioinformatics/bts611){:target="_blank"}
{:.table.table-striped}

### Read Mapping

Tool | Description | Reference
--- | --- | ---
[HISAT2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fhisat2%2Fhisat2){:target="_top"} | Hierarchical indexing for spliced alignment of transcripts | [Pertea et al. 2016](https://doi.org/10.1038/nprot.2016.095){:target="_blank"}
[RNA STAR]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Frgrnastar%2Frna_star){:target="_top"} | Rapid spliced aligner for RNA-seq data | [Dobin et al. 2013](https://academic.oup.com/bioinformatics/article/29/1/15/272537/STAR-ultrafast-universal-RNA-seq-aligner){:target="_blank"}
[STAR-fusion]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fstar_fusion%2Fstar_fusion){:target="_top"} | Fast fusion gene finder | [Haas et al. 2017](https://www.biorxiv.org/content/early/2017/03/24/120295){:target="_blank"}
[Bowtie2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Fbowtie2%2Fbowtie2){:target="_top"} | Fast and sensitive read alignment | [Langmead et al. 2012](https://doi.org/10.1038/nmeth.1923){:target="_blank"}
[BWA]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fdevteam%2Fbwa%2Fbwa){:target="_top"} | Software package for mapping low-divergent sequences against a large reference genome | [Li and Durbin 2009](https://doi.org/10.1093/bioinformatics/btp324){:target="_blank"}, [Li and Durbin 2010](https://doi.org/10.1093/bioinformatics/btp698){:target="_blank"}
{:.table.table-striped}

### Transcript Assembly

Tool | Description | Reference
--- | --- | ---
[Trinity]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Ftrinity%2Ftrinity){:target="_top"} | De novo transcript sequence reconstruction from RNA-Seq | [Haas et al. 2013](https://doi.org/10.1038%2Fnprot.2013.084){:target="_blank"}
{:.table.table-striped}

### Quantification

Tool | Description | Reference
--- | --- | ---
[featureCounts]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Ffeaturecounts%2Ffeaturecounts){:target="_top"} | Ultrafast and accurate read summarization program | [Liao et al. 2014](http://dx.doi.org/10.1093/bioinformatics/btt656){:target="_blank"}
[htseq-count]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Flparsons%2Fhtseq_count%2Fhtseq_count){:target="_top"} | Tool for counting reads in features | [Anders et al. 2015](https://doi.org/10.1093%2Fbioinformatics%2Fbtu638){:target="_blank"}
[Sailfish]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fsailfish%2Fsailfish){:target="_top"} | Rapid Alignment-free Quantification of Isoform Abundance | [Patro et al. 2014](http://dx.doi.org/10.1038/nbt.2862){:target="_blank"}
[Salmon]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fbgruening%2Fsalmon%2Fsalmon){:target="_top"} | Fast, accurate and bias-aware transcript quantification | [Patro et al. 2017](http://dx.doi.org/10.1038/nmeth.4197){:target="_blank"}
{:.table.table-striped}

### Differential expression analysis

Tool | Description | Reference
--- | --- | ---
[DESeq2]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu%2Frepos%2Fiuc%2Fdeseq2%2Fdeseq2){:target="_top"} | Differential gene expression analysis based on the negative binomial distribution | [Love et al. 2014](http://doi.org/10.1186/s13059-014-0550-8){:target="_blank"}
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
RiboTaper | An analysis pipeline for Ribo-Seq experiments, exploiting the triplet periodicity of ribosomal footprints to call translated regions | [Calviello et al. 2016](https://doi.org/10.1038/nmeth.3688){:target="_blank"}
{:.table.table-striped}

</div>

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

