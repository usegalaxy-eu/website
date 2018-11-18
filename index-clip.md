---
layout: subsite-galaxy
---

# Galaxy CLIP-Explorer

Welcome to the Galaxy CLIP-Explorer -- a webserver to process, analyse and visualise CLIP-Seq data.

![](/assets/media/cover_design_clipseq.png)

## 1. Getting Started with Galaxy CLIP-Explorer

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take <a target="_parent" href="https://hicexplorer.usegalaxy.eu/tours/core.galaxy_ui">a guided tour</a> through Galaxy's user interface.

Take a look at the CLIP-Seq data analysis tutorial on the <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html">Galaxy Training Network</a>  where you can analyse CLIP-Seq data of RBFOX2 from human liver cancer cells (Hep G2). The tutorial will help you to understand the analysis steps and the most important parameters and tools that are used in CLIP-Explorer.

The underlying workflow of the tutorial can be found <a target="_parent" href="https://github.com/galaxyproject/training-material/tree/master/topics/transcriptomics/tutorials/clipseq/workflows/">here</a>.

We recommend to follow the tutorial on <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/sequence-analysis/tutorials/quality-control/tutorial.html">FastQC</a> for quality checks and the tutorial for <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/introduction/tutorials/igv-introduction/tutorial.html">IGV</a> for data inspection.


The Galaxy Training Network tutorial uses eCLIP data from human liver cancer cells (Hep G2) and is hosted on zenodo: <a target="_parent" href="https://zenodo.org/record/1327423"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1327423.svg" alt="DOI"></a>

Galaxy CLIP-Explorer can process large CLIP-Seq data of eCLIP and iCLIP. We processed eCLIP data with around 20 million reads from [Nostrand et al. (2016)](https://doi.org/10.1038/nmeth.3810). CLIP-Explorer can handle multiplexed and de-multiplexed eCLIP and iCLIP data in FASTQ and FASTA format.

## 2. Galaxy CLIP-Explorer -- Many Possibilities

![](/assets/media/content_design_clipseq.png)
 <b>(A)</b> Galaxy CLIP-Explorer workflows and tools; <b>(B)</b> Output of `multiBamSummary` and `plotCorrelation` comparing two biological replicates of a CLIP-Seq experiment and one control sample. <b>(C)</b> Output of `plotFingerprint` that shows the read coverage for the CLIP-Seq and control samples. <b>(D)</b> Output of `CollectInsertSizeMetrics` estimating the insert size for the read libraries. <b>(E)</b> Output of `FastQC` showing the duplication levels of the read libraries. <b>(F)</b> Sequence motifs of `MEME-Chip` (DREME and MEME) from binding sequence motifs that were predicted from potential binding regions (peaks) obtained by a peak caller like `PEAKachu`, `Piranha` or `PureCLIP`. <b>(G-I)</b> Example output of `RCAS` (RNA Centric Annotation System); <b>(G)</b> showing the binding coverage for the transcript and the 5' and 3' UTR, <b>(H)</b> depicting the binding coverage around the exon-intron boundaries, <b>(I)</b> and a generated target distribution plot which states what kind of RNAs the protein of interest prevalently binds to.


## 3. Workflows

We provide the subsequent workflows to automatize the data analysis for iCLIP and eCLIP data. All workflows can be found [here](https://github.com/Florian-H-Lab/CLIP-Explorer). The data needs to be in FASTA or FASTQ format and can be either multiplexed or de-multiplexed. All workflows, except the robust peak analysis, require the data as a list of dataset pairs. A tutorial to create a list of dataset pairs can be found in the CLIP-Seq data analysis <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html">tutorial</a> or [here](https://galaxyproject.github.io/training-material/topics/galaxy-data-manipulation/tutorials/collections/tutorial.html). Please have in mind that all workflows need additional input files from the user.

### 3.1 From scratch to de-multiplexed FASTQ files

If your data is not de-multiplexed yet, then use the following workflows. The user has to provide the in-line barcodes in a tab-delimited tabular format, for example:

- rep1  TTAG
- rep2	TGGC
- rep3	TTAA

The raw data needs to be in FASTA or FASTQ format as a list of dataset pairs.

- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/1demultiplexeclip">Workflow to de-multiplex eCLIP read library</a>
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/2demultiplexiclip">Workflow to de-multiplex iCLIP read library</a>


### 3.2 From scratch with de-multiplexed FASTQ files

You can choose between three different types of peak calling for the data analysis of eCLIP and iCLIP data. The data specification of each of the peak calling algorithms is listed below:

**Table 1**: Data specification of the different peak calling algorithms.

| Tool | Biological Replicates (Yes/No) | Control Data (Yes/No) |
| ---            | :-:      | :-:     |
| <a href="https://github.com/tbischler/PEAKachu">PEAKachu</a>            | Yes | Yes   |
| <a href="https://doi.org/10.1186/s13059-017-1364-2">PureCLIP</a>            | No | Yes   |
| <a href="https://doi.org/10.1093/bioinformatics/bts569">Piranha</a>           | No | No   |
{: .table.table-striped}

#### Note if you have used the de-mutliplexing workflows:
If you used the preceding workflows for de-multiplexing, then remove the steps of `Cutadapt` and `UMI-tools extract` from the following workflows to analyse your data. Simply, import the workflow into you account, remove the tools and connect the lose end directly to the alignment step.

#### Note if you use eCLIP data of Nostrand et al. (2016):
The workflow for the eCLIP data of [Nostrand et al. (2016)](https://doi.org/10.1038/nmeth.3810) was used to analyse the data of RBFOX2. Beware when using other data of the study of [Nostrand et al. (2016)](https://doi.org/10.1038/nmeth.3810), because the size of the unique molecular identifier (UMI) can be different. The workflow is set to a UMI of five nucleotides. You can change this by importing the workflow into your account and amend the parameter `Cut bases from reads before adapter trimming` of the second `Cutadapt` step for the CLIP and control data.

#### eCLIP
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/1clipseq-explorerdemultiplexedpeakachuecliphg19n5-1">Workflow for the eCLIP data of Nostrand et al. (2016)</a>
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/2clipseq-explorerdemultipeakachuecliphg19">Peakcalling with PEAKachu</a>
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/3clipseq-explorerdemultipureclipecliphg19">Peak calling with PureCLIP</a>
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/4clipseq-explorerdemultipiranhaecliphg19">Peak calling with Piranha</a>

#### iCLIP
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/1clipseq-explorerdemultipeakachuicliphg19">Peak calling with PEAKachu</a>
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/2clipseq-explorerdemultipureclipicliphg19">Peak calling with PureCLIP</a>
- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/3clipseq-explorerdemultipiranhaicliphg19">Peak calling with Piranha</a>

### 3.3 Further optional peak analysis

The following workflow can be used if you have picked a peak calling algorithm that do not support biological replicated data. The workflow finds and analysis robust binding regions shared between different peak files.

- <a href="https://galaxy.uni-freiburg.de/u/heylf/w/robustpeakanalysis">Robust peak analysis</a>

## 4. Remarks

Please follow the CLIP-Seq data analysis <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html">tutorial</a> for a deeper understand of the tools of CLIP-Explorer. Changes to the workflows can be done anytime and without any problems. Simply import the workflow into your account and amend the necessary tools. Therefore, keep the following things in mind:

### 4.1 Adapter sequences
The workflows uses `Cutadapt` to remove standard eCLIP and iCLIP adapter sequences. You need to change `Cutadapt` parameters if your read library covers other adapter sequences.

### 4.2 UMI and in-line barcodes
The workflows uses `Cutadapt` to trim of the length of the UMI (+ barcode) from one site of the read pair. This depends on the iCLIP, eCLIP and your own protocol. Please check or change the parameter in `Cutadapt` based on your UMI and in-line barcode. For more information follow the CLIP-Seq data analysis <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html">tutorial</a>.

CLIP-explorer uses `UMI-tools extract` to find the UMIs inside your reads. Change the pattern of `UMI-tools extract` based on your read library preparation.

### 4.3 Read alignment
Read alignment is done with `STAR` which combines genome and transcriptome data. CLIP-Explorer focusses only on uniquely mapped read. Furthermore, `STAR` is executed with soft-clipping turned off. For more information follow the CLIP-Seq data analysis <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html">tutorial</a>.


### 4.4 Peak calling with PEAKachu
You need to specific the insert size of your paired-end reads for `PEAKachu`. For that reason, check the output image of `CollectInsertSizeMetric` to get an estimate for that parameter.

### 4.5 Peak calling with PureCLIP
PureCLIP works best with only one site of the paired end reads, where the cross linking event occurs. Thus, CLIP-Explorer filters out the other mate before the peak calling. Remove the `Bam filter` tool to disable this behavior or change `Bam filter` to pick the correct site.

### 4.6 Extension of the binding regions
CLIP-Explorer uses `SlopBED` to extend the peaks a few basepairs to the left and right in order to correct for an underestimation of the binding regions of the peak calling algorithms. For more information follow the CLIP-Seq data analysis <a target="_parent" href="https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/clipseq/tutorial.html">tutorial</a>. Remove the tool or change the parameter of `SlopBED` to change this behavior.
