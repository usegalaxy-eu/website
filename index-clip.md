---
layout: galaxy
---

{% include notices.html %}
{% include maintenance.html %}

# Galaxy CLIP-Explorer

Welcome to the Galaxy CLIP-Explorer -- a webserver to process, analyse and visualise CLIP-Seq data.

![](https://raw.githubusercontent.com/deeptools/HiCExplorer/master/docs/images/hicex2.png)

## 1. Get started with Galaxy CLIP-Explorer

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take <a target="_parent" href="https://hicexplorer.usegalaxy.eu/tours/core.galaxy_ui">a guided tour</a> through Galaxy's user interface.

Take a look at the CLIP-Seq data analysis tutorial on the <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/epigenetics/tutorials/clipseq/tutorial.html">Galaxy Training Network</a>  where you can analyse CLIP-Seq data of RBFOX2 from human liver cancer cells (Hep G2). Follow the tutorial to understand the analysis steps better or deepening your understanding for the parameters and tools that are useful.

The underlying workflow of the tutorial can be found <a target="_parent" href="https://galaxy.uni-freiburg.de/u/heylf/w/tutorial1clipseq-explorerdemultiplexedpeakachuecliphg19n5">here</a>.

We recommend to follow the tutorial on <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/sequence-analysis/tutorials/quality-control/tutorial.html">FastQC</a> for quality checks and the tutorial for <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/introduction/tutorials/igv-introduction/tutorial.html">IGV</a> for data inspection.


The Galaxy Training Network tutorial uses eCLIP data from human liver cancer cells (Hep G2) and is hosted on zenodo: <a target="_parent" href="https://zenodo.org/record/1327423"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1327423.svg" alt="DOI"></a>

Galaxy CLIP-Explorer can process large CLIP-Seq data of eCLIP and iCLIP. We processed eCLIP data with around 20 million reads from [Nostrand et al. (2016)](https://doi.org/10.1038/nmeth.3810). CLIP-Explorer can handle multiplexed and de-multiplexed eCLIP and iCLIP data in FASTQ and FASTA format.

## 2. Galaxy CLIP-Explorer -- many possibilities

![](/assets/media/publication_plots.png)
 <b>(A)</b> Galaxy HiCExplorer workflows and tools. Quality control tools: <b>(B)</b> Output of hicCorrelate comparing two wild types and one knockdown samples. <b>(C)</b> Output of hicPlotDistVsCounts that shows changes of the number of contacts for different conditions. Analysis tools: <b>(D)</b> hicPlotMatrix of the Pearson correlation matrix derived from a contact matrix for chromosome 6 in mouse computed with hicTransform. The optional data track at the bottom shows the first eigenvector for A/B compartment obtained using hicPCA. <b>(E)</b> The pixel difference between a Hi-C corrected matrix for wild type condition and a knock down was computed using hicCompareMatrices and a 7Mb region is visualized using hicPlotMatrix. Visualization tools: <b>(F)</b> Contact matrix plot of a 80 to 105 Mb region of chromosome 2 in log scale. <b>(G)</b> Example output of hicPlotViewpoint showing the corrected number of Hi-C contacts for a single bin in chromosome 5 (output similar to 4C-seq) (<a target="_parent" href="https://doi.org/10.1101/gr.213066.116">Andrey 2017</a>). <b>(H)</b> A Hi-C matrix was converted into an observed vs. expected matrix using hicTransform and this matrix, together with the location of high-affinity sites from (<a target="_parent" href="https://doi.org/10.1016/j.molcel.2015.08.024">Ramirez 2015</a>) were used to run hicAggregateContacts. <b>(I)</b> 85 Mb to 110 Mb region from human chromosome 2 visualized using hicPlotTADs. TADs were computed by hicFindTADs. The additional tracks added correspond to: TAD- separation score (as reported by hicFindTADs), chromatin state , principal component 1 (A/B compartment) computed using hicPCA, ChIP-seq coverage for the H3K27ac mark, DNA methylation, and a gene track. Hi-C data for <b>B</b>, <b>C</b>, <b>E</b> and <b>H</b> from Drosophila melanogaster S2 cells from (<a target="_parent" href="https://doi.org/10.1038/s41467-017-02525-w">Ramirez 2018</a>). Hi-C data for <b>D</b>, <b>F</b> and <b>I</b> from mouse cardiac myocytes(<a target="_parent" href="https://doi.org/10.1038/s41467-017-01724-9 ">Nothjunge 2017</a>). Additional tracks in <b>I</b> from (<a target="_parent" href="https://doi.org/10.1038/s41467-017-01724-9 ">Nothjunge 2017</a>).


## 3. Workflows

We provide the subsequent workflow to automatize the data analysis for iCLIP and eCLIP data. The data needs to be in FASTA or FASTQ format and can be either multiplexed or de-multiplexed. All of the workflows, except the robust peak analysis, require the data as a list of dataset pairs. A tutorial to create a list of dataset pairs can be found <a target="_parent" href="">here</a>. Please have in mind that all workflows need additional input from the user.

### 3.1 From scratch for de-multiplexing FASTQ files

If your data is not de-multiplexed yet, then use the following workflows. The user has to provide the in-line barcodes in a tab-delimited tabular format, for example: </br>
rep1  TTAG </br>
rep2	TGGC </br>
rep3	TTAA </br>
The raw data needs to be in FASTA or FASTQ format as a list of dataset pairs (<a target="_parent" href="">tutorial list if dataset pairs</a>).

- <a href="">Workflow to de-multiplex eCLIP read library</a>
- <a href="">Workflow to de-multiplex iCLIP read library</a>


### 3.2 From scratch with de-multiplexed FASTQ files

You can choose between three different types of peak calling for the data analysis of eCLIP and iCLIP data. The data specification of each of the peak calling algorithms is listed below:

**Table 1**: Data specification of the different peak calling algorithms.

| Tool | Biological Replicates (Yes/No) | Control Data (Yes/No) |
| ---            | :-:      | :-:     |
| <a href="https://github.com/tbischler/PEAKachu">PEAKachu</a>            | Yes | Yes   |
| <a href="https://doi.org/10.1186/s13059-017-1364-2">PureCLIP</a>            | No | Yes   |
| <a href="https://doi.org/10.1093/bioinformatics/bts569">Piranha</a>           | No | No   |

#### Note if you have used the de-mutliplexing workflows:
If you used the preceding workflows for de-multiplexing then remove the steps of `Cutadapt` and `UMI-tools extract` from the following workflows to analyse your data. Simply, import the workflow into you account, remove the tools and connect the lose end directly to the alignment step.

#### Note if you use eCLIP data of Nostrand et al. (2016):
The workflow for the eCLIP data of [Nostrand et al. (2016)](https://doi.org/10.1038/nmeth.3810) was used to analyse the data of RBFOX2. Beware when using other data of the study of [Nostrand et al. (2016)](https://doi.org/10.1038/nmeth.3810), because the size of the unique molecular identifier (UMI) can be different. The workflow is set to a UMI of five nucleotides. You can change this by importing the workflow into your account and amend the parameter `Cut bases from reads before adapter trimming` of second `Cutadapt` step for the CLIP and control data.

#### eCLIP
- <a href="">Workflow for the eCLIP data of Nostrand et al. (2016)</a>
- <a href="">Peakcalling with PEAKachu</a>
- <a href="">Workflow peak calling with PureCLIP</a>
- <a href="">Workflow peak calling with Piranha</a>

#### iCLIP
- <a href="">Workflow peak calling with PEAKachu</a>
- <a href="">Workflow peak calling with PureCLIP</a>
- <a href="">Workflow peak calling with Piranha</a>

### 3.3 Further optional peak analysis

The following workflow can be used if you have picked a peak calling algorithm that do not support biological replicated data. The workflow finds and analysis robust binding regions shared between different peak files.   

- <a href="">Robust peak analysis</a>

## 4. Important Parameters and notes to the workflows

Please follow the CLIP-Seq data analysis <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/epigenetics/tutorials/clipseq/tutorial.html">tutorial</a> for a deeper understand of the tools of CLIP-Explorer. Changes to the workflows can be done anytime and without any problems. Simply import the workflow into your account and amend the necessary tools. Therefore, keep the following things in mind:  

### 4.1 Adapter sequences
The workflows uses `Cutadapt` to remove standard eCLIP and iCLIP adapter sequences. You need to change `Cutadapt` if you have other adapter seqeunces.

### 4.2 UMI and in-line barcodes
The workflows uses `Cutadapt` to trim of the length of the UMI (+ barcode) from one site of the read pair. This depends on the iCLIP, eCLIP and your own protocol. Please check or change the parameter in `Cutadapt` based on your UMI and in-line barcode. For more information follow the CLIP-Seq data analysis <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/epigenetics/tutorials/clipseq/tutorial.html">tutorial</a>.</br>
CLIP-explorer uses `UMI-tools extract` to find the UMIs inside your reads. Change the pattern of `UMI-tools extract` based on your read library preparation.

### 4.3 Read alignment
Read alignment is done with `STAR` which combines genome and transcriptome data. CLIP-Explorer focusses only on uniquely mapped read. Furthermore, `STAR` is executed with soft-clipping turned off. For more information follow the CLIP-Seq data analysis <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/epigenetics/tutorials/clipseq/tutorial.html">tutorial</a>.


### 4.4 Peak calling with PEAKachu
You need to specific the insert size of your paired-end reads for `PEAKachu`. For that reason, check the output image of `CollectInsertSizeMetric` to get an estimate for that parameter.

### 4.5 Peak calling with PureCLIP
PureCLIP works best with only one site of the paired end reads where the crosslinking event occurs. Thus, CLIP-Explorer filters out the other mate before the peak calling. Remove the `Bam filter` tool to disable this behavior.

### 4.6 Extension of the binding regions
CLIP-Explorer uses `SlopBED` to extend the peaks a few basepairs to the left and reft in order to correct for and underestimation of the binding regions of the peak calling algorithms. For more information follow the CLIP-Seq data analysis <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/epigenetics/tutorials/clipseq/tutorial.html">tutorial</a>. Remove the tool or change the parameter of `SlopBED` to change this behavior.

## Our Data Policy

{% include data-policy.html %}
{% include jobs_graph.html %}
{% include home_done.html %}
