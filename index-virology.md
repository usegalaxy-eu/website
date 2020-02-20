---
layout: subsite-galaxy
website: https://virology.usegalaxy.eu
subdomain: rna
---

# Welcome to the European Virology Galaxy flavor
{:.no_toc}

![Virology Galaxy](/assets/media/virology_workbench.jpeg){:.rna-intro-right}

The Virology Galaxy workbench is a comprehensive set of analysis tools and consolidated workflows.
The workbench is based on the Galaxy framework, which guarantees simple access, easy extension, flexible adaption to personal and security needs,
and sophisticated analyses independent of command-line knowledge.


# Content
{:.no_toc}

1. TOC
{:toc}

# The [SARS-CoV-2](https://github.com/galaxyproject/SARS-CoV-2) project

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take
[a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

All data that you need is available on [GitHub](https://github.com/galaxyproject/SARS-CoV-2) or in our dedicated [data library](https://usegalaxy.eu/library/list#folders/Fbe28a3bea3980e71).
Otherwise, we will start with the preprocessing of raw [SARS-CoV-2](https://github.com/galaxyproject/SARS-CoV-2) reads.

## Preprocessing of raw SARS-CoV-2 reads

The raw reads available so far are generated from bronchoalveolar lavage fluid (BALF) and are metagenomic in nature: they contain human reads, reads from potential bacterial co-infections as well as true COVID-19 reads.

### What's the point?

Assess quality of reads, remove adapters and remove reads mapping to human genome.

### The outline

Illumina and Oxford nanopore reads are pulled from the NCBI SRA (links to SRA accessions are available [here](https://www.ncbi.nlm.nih.gov/genbank/sars-cov-2-seqs/)). They are then processed separately as described in the [workflow section](#the-history-and-the-workflow).

### Inputs

Only SRA accessions are required for this analysis. The described analysis was performed with all SRA SARS-CoV accessions available as of Feb 20, 2020:

1. Illumina reads

   ```
   SRR10903401
   SRR10903402
   SRR10971381
   ```

2. Oxford Nanopore reads

   ```
   SRR10948550
   SRR10948474
   SRR10902284
   ```

### Outputs

This workflow produces three outputs that are used in tow subsequent analyses


`#` | Output | Used in
--- | --- | ---
1 | A combined set of adapter-free Illumina reads without human contamination | [Assembly](https://github.com/galaxyproject/SARS-CoV-2/tree/master/2-Assembly)
2 | A combined set of Oxford Nanopore reads without human contamination | [Assembly](https://github.com/galaxyproject/SARS-CoV-2/tree/master/2-Assembly)
3 | A collection of adapter-free Illumina reads from which human reads *have not* been removed | [Variation detection](https://github.com/galaxyproject/SARS-CoV-2/tree/master/4-Variation)
{:.table.table-striped}


### The history and the workflow

A Galaxy workspace (history) containing the most current analysis can be imported from [here](https://usegalaxy.org/u/aun1/h/covid-19-pre-processing).

The publicly accessible [workflow](https://usegalaxy.org/u/aun1/w/covid-19-pre-pp) can be downloaded and installed on any Galaxy instance. It contains version information for all tools used in this analysis. 

The workflow performs the following steps:

#### Illumina

 - Illumina reads are QC'ed and adapter sequences are removed using `fastp`
 - Quality metrics are computed and visualized using `fastqc`  and `multiqc`
 - Reads are mapped against human genome version `hg38` using `bwa mem`
 - Reads that **do not map** to `hg38` are filtered out using `samtools view`
 - Reads are converted back to fastq format using `samtools fastx`

#### Oxford nanopore

 - Reads are QC'ed using `nanoplot`
 - Quality metrics are computed and visualized using `fastqc`  and `multiqc`
 - Reads are mapped against human genome version `hg38` using `minimap2`
 - Reads that **do not map** to `hg38` are filtered out using `samtools view`
 - Reads are converted back to fastq format using `samtools fastx`

![](/assets/media/sars/pp_wf.png){:height="50%" width="50%"}




## Assembly of SARS-CoV-2 from pre-processed reads

### What's the point?

Use a combination of Illumina and Oxford Nanopore reads to produce SARS-CoV-2 genome assembly.

### Outline

We use Illumina and Oxford Nanopore reads that were pre-processed to remove human-derived sequences. We use two assembly tools: [`spades`](http://cab.spbu.ru/software/spades/) and [`unicycler`](https://github.com/rrwick/Unicycler). While `spades` is a tool fully dedicated to assembly, `unicycler` is a "wrapper" that combines multiple existing tools. It uses `spades` as an engine for short read assembly while utilizing [`mimiasm`](https://github.com/lh3/miniasm) and [`racon`](https://github.com/isovic/racon) for assembly of long noisy reads. 

In addition to assemblies (actual sequences) the two tools produce assembly graphs that can be used for visualization of assembly with [`bandage`](https://rrwick.github.io/Bandage/).

### Inputs

Filtered Illumina and Oxford Nanopore reads produced during the [pre-processing step](https://github.com/galaxyproject/SARS-CoV-2/tree/master/PreProcessing) are used as inputs to the assembly tools. 

### Outputs

Each tool produces assembly (contigs) and assembly graph representations. The largest contigs generated by `unicycler` and `spades` were 29,781 and 29,907 nts, respectively, and had 100% identity over their entire length.

The following figures show visualizations of assembly graphs produced with `spades` and `unicycler`. The complexity of the graphs is not surprising given the metagenomic nature of the underlying samples.

| Assembly graphs for Unicycler (A) and SPAdes (B) |
|:-------------------------------|
| ![](https://usegalaxy.org/datasets/bbd44e69cb8906b5d6265148ad20e586/display/?preview=True){:height="50%" width="50%"}
| **A**. Unicycler assembly graph |
| ![](https://usegalaxy.org/datasets/bbd44e69cb8906b5f5dc8f4de00733be/display/?preview=True){:height="50%" width="50%"}
| **B**. SPAdes assembly graph |

### History and workflow

A Galaxy workspace (history) containing the most current analysis can be imported from [here](https://usegalaxy.org/u/aun1/h/ncov-assembly).

The publicly accessible [workflow](https://usegalaxy.org/u/aun1/w/ncov-assembly-1) can be downloaded and installed on any Galaxy instance. It contains version information for all tools used in this analysis. 

![](/assets/media/sars/as_wf.png){:height="50%" width="50%"}




## Dating the most common recent ancestor (MCRA) of SARS-CoV-2

###  What's the point?


For this we used simple root-to-tip regression [Korber et al. 2000](https://www.ncbi.nlm.nih.gov/pubmed/10846155) (more complex and powerful phylodynamics methods could certainly be used, but for this data with very low levels of sequence divergence, simpler and faster methods suffice). Using a set of sequences from all COVID-19 sequences available as of Feb 16, 2020 we obtained an MCRA date of Nov 14, 2019, which is close to other existing estimates [Rambaut 2020](http://virological.org/t/phylodynamic-analysis-115-genomes-20-feb-2020/356).

### Outline

This analysis consists of two components - a Galaxy workflow and a Jupyter notebook. 

The workflow is used to extract full length sequences of SARS-CoV-2, tidy up their names in FASTA files, produce a multiple sequences alignment and compute a maximum likelihood tree.

The [Jupyter notebook](./MCRA_Estimation_Notebook.ipynb) is used to correlate branch lengths with collection dates in order to estimate MCRA timing.

### Inputs

One input is required: a comma-separated [file](acc_date.txt) containing accession numbers and collection dates:

```
Accession,Collection_Date
MT019531,2019-12-30
MT019529,2019-12-23
MT007544,2020-01-25
MN975262,2020-01-11
...
```

An up-to-date version of this file can be generated directly from the [NCBI Virus](https://www.ncbi.nlm.nih.gov/labs/virus/) resource by

1. searching for SARS-CoV-2 (NCBI taxid: 2697049) sequences
2. configuring the list of results to display only the `Accession` and `Collection date` columns
3. downloading the `Current table view result` in `CSV format`

The collection dates will be taken from the corresponding GenBank record's `/collection_date` tag. 

### Outputs



### History and workflow

A Galaxy workspace (history) containing the most current analysis can be imported from [here](https://usegalaxy.org/u/aun1/h/ncov-mcra-timing).

The publicly accessible [workflow](https://usegalaxy.org/u/aun1/w/mcra) can be downloaded and installed on any Galaxy instance. It contains version information for all tools used in this analysis. 

![](/assets/media/sars/mcra_wf.png){:height="50%" width="50%"}




## Analysis of variation within individual COVID-19 samples

### What's the point?

To understand the amount of heterogeneity in individual COVID-19 isolates.

### Outline

As of writing (2/13/2020) there were just three Illumina datasets from COVID-19 patients:

```
- sra-study: SRP242226
  bioproject: PRJNA601736
  biosample: SAMN13872787
  sra-sample: SRS6007144
  sra-experiment: SRX7571571
  sra-run: SRR10903401

- sra-study: SRP242226
  bioproject: PRJNA601736
  biosample: SAMN13872786
  sra-sample: SRS6007143
  sra-experiment: SRX7571570
  sra-run: SRR10903402

- sra-study: SRP245409
  bioproject: PRJNA603194
  biosample: SAMN13922059
  sra-sample: SRS6067521
  sra-experiment: SRX7636886
  sra-run: SRR10971381
 ```

To understand the extent of sequence variation within these samples we performed the following analysis. First, we used a Galaxy workflow to perform the following steps:


 1. Mapped all reads against COVID-19 reference [NC_045512.2](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512) using `bwa mem`
 2. Filtered reads with mapping quality of at least 20, that were mapped as proper pairs
 3. Performed realignments using `lofreq viterbi`
 4. Called variants using `lofreq call`
 5. Annotated variants using `snpeff` against database created from NC_045512.2 GenBank file
 6. Converted VCFs into tab delimited datasets

 Next, we analyzed this tab delimited data in a [Jupyter notebook](variation_analysis.ipynb).

### Inputs

#### Workflow

1. GenBank file for the reference COVID-19 [genome](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512).

   The GenBank record is used by `snpeff` to generate a database for variant annotation.
2. Set of illumina reads (in this case a collection of unfiltered reads from `SRR10903401`, `SRR10903402`, and `SRR10971381`)

#### Jupyter notebook

The Jupyter notebook requires the GenBank file (#1 from above) and the output of the workflow described below. 

### Outputs

The workflow produces a table of variants that looks like this:

<div>

<table class="table table-striped">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Sample</th>
      <th>CHROM</th>
      <th>POS</th>
      <th>REF</th>
      <th>ALT</th>
      <th>DP</th>
      <th>AF</th>
      <th>SB</th>
      <th>DP4</th>
      <th>IMPACT</th>
      <th>FUNCLASS</th>
      <th>EFFECT</th>
      <th>GENE</th>
      <th>CODON</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>SRR10903401</td>
      <td>NC_045512</td>
      <td>1409</td>
      <td>C</td>
      <td>T</td>
      <td>124</td>
      <td>0.040323</td>
      <td>1</td>
      <td>66,53,2,3</td>
      <td>MODERATE</td>
      <td>MISSENSE</td>
      <td>NON_SYNONYMOUS_CODING</td>
      <td>orf1ab</td>
      <td>Cat/Tat</td>
    </tr>
    <tr>
      <td>1</td>
      <td>SRR10903401</td>
      <td>NC_045512</td>
      <td>1821</td>
      <td>G</td>
      <td>A</td>
      <td>95</td>
      <td>0.094737</td>
      <td>0</td>
      <td>49,37,5,4</td>
      <td>MODERATE</td>
      <td>MISSENSE</td>
      <td>NON_SYNONYMOUS_CODING</td>
      <td>orf1ab</td>
      <td>gGt/gAt</td>
    </tr>
    <tr>
      <td>2</td>
      <td>SRR10903401</td>
      <td>NC_045512</td>
      <td>1895</td>
      <td>G</td>
      <td>A</td>
      <td>107</td>
      <td>0.037383</td>
      <td>0</td>
      <td>51,52,2,2</td>
      <td>MODERATE</td>
      <td>MISSENSE</td>
      <td>NON_SYNONYMOUS_CODING</td>
      <td>orf1ab</td>
      <td>Gta/Ata</td>
    </tr>
    <tr>
      <td>3</td>
      <td>SRR10903401</td>
      <td>NC_045512</td>
      <td>2407</td>
      <td>G</td>
      <td>T</td>
      <td>122</td>
      <td>0.024590</td>
      <td>0</td>
      <td>57,62,1,2</td>
      <td>MODERATE</td>
      <td>MISSENSE</td>
      <td>NON_SYNONYMOUS_CODING</td>
      <td>orf1ab</td>
      <td>aaG/aaT</td>
    </tr>
    <tr>
      <td>4</td>
      <td>SRR10903401</td>
      <td>NC_045512</td>
      <td>3379</td>
      <td>A</td>
      <td>G</td>
      <td>121</td>
      <td>0.024793</td>
      <td>0</td>
      <td>56,62,1,2</td>
      <td>LOW</td>
      <td>SILENT</td>
      <td>SYNONYMOUS_CODING</td>
      <td>orf1ab</td>
      <td>gtA/gtG</td>
    </tr>
  </tbody>
</table>
</div>

Here, most fields names are descriptive. **SB** = the Phred-scaled probability of strand bias as calculated by
[lofreq](https://csb5.github.io/lofreq/) (0 = no strand bias); **DP4** = strand-specific depth for reference and alternate allele observations
(Forward reference, reverse reference, forward alternate, reverse alternate).

------

The variants we identified were distributed across the SARS-CoV-2 genome in the following way:

![](/assets/media/sars/var_map.png)

The following table describes variants with frequencies above 10%:

![](/assets/media/sars/S_var.png)

## History and workflow

A Galaxy workspace (history) containing the most current analysis can be imported from [here](https://usegalaxy.org/u/aun1/h/ncov-intrasample-variation).

The publicly accessible [workflow](https://usegalaxy.org/u/aun1/w/ncov-variation-analysis) can be downloaded and installed on any Galaxy instance.
It contains version information for all tools used in this analysis.

![](/assets/media/sars/var_wf.png){:height="50%" width="50%"}




## Alignment of COVID-19 Spike protein with homologs from other coronaviruses

### What's the point?

Aligning Spike protein sequences to detect structural variations and impact of polymorphisms.

### Outline

We generate a codon alignment for a set of coronaviruses in order to track polymorphisms uncovered by the analysis of [variation in individual samples](https://github.com/galaxyproject/SARS-CoV-2/tree/master/Variation).


### Input

Downloaded CDS sequences of coronavirus Spike proteins from [NCBI Viral Resource](https://www.ncbi.nlm.nih.gov/labs/virus/vssi/#/virus?SeqType_s=Nucleotide&VirusLineage_ss=SARS-CoV-2,%20taxid:2697049) for the following coronaviruses:

```
FJ588692.1	Bat SARS Coronavirus Rs806/2006
KR559017.1	Bat SARS-like coronavirus BatCoV/BB9904/BGR/2008
KC881007.1	Bat SARS-like coronavirus WIV1
KT357810.1	MERS coronavirus isolate Riyadh_1175/KSA/2014
KT357811.1	MERS coronavirus isolate Riyadh_1337/KSA/2014
KT357812.1	MERS coronavirus isolate Riyadh_1340/KSA/2014
KF811036.1	MERS coronavirus strain Tunisia-Qatar_2013
AB593383.1	Murine hepatitis virus
AF190406.1	Murine hepatitis virus strain TY
AY687355.1	SARS coronavirus A013
AY687356.1	SARS coronavirus A021
AY687361.1	SARS coronavirus B029
AY687365.1	SARS coronavirus C013
AY687368.1	SARS coronavirus C018
AY648300.1	SARS coronavirus HHS-2004
DQ412594.1	SARS coronavirus isolate CUHKtc10NP
DQ412596.1	SARS coronavirus isolate CUHKtc14NP
DQ412609.1	SARS coronavirus isolate CUHKtc32NP
MN996528.1	nCov-2019
MN996527.1	nCov-2019
NC_045512.2	nCov-2019
NC_002306.3	Feline infectious peritonitis virus
NC_028806.1	Swine enteric coronavirus strain Italy/213306/2009
NC_038861.1	Transmissible gastroenteritis virus
```

### Output

We produce two alignments, one at the nucleotide and one at the amino acid level, of Betacoronavirus spike proteins. The alignments can be visualized with the `Multiple Sequence Alignment` visualization in Galaxy :

|   |
|:-------------------------------:|
| ![Visualization of amino acid alignment in Galaxy](/assets/media/sars/align_galaxy_viz.png){:height="50%" width="50%"} |

Or with locally installed softwares, here [`AliView`](https://github.com/AliView/AliView).


|  Alignments of Spike proteins   |
|:-------------------------------:|
| ![Nucleic Alignment of Spike proteins](/assets/media/sars/Spike_CDS_Alignment.png){:height="50%" width="50%"} |
| **A**. CDS alignments |
| ![Proteic Alignment of Spike proteins](/assets/media/sars/Spike_Protein_Alignment.png){:height="50%" width="50%"} |
| **B**. Protein alignment |



### Workflow

The Galaxy history containing the latest analysis can be found [here](https://usegalaxy.org/u/delphinel/h/s-proteins-alignment). The publicly accessible [workflow](https://usegalaxy.org/u/delphinel/w/cov-alignment) can be downloaded and installed on any Galaxy instance. It contains all information about tool versions and parameters used in this analysis.

![Analysis Workflow](/assets/media/sars/Workflow_snapshot.png){:height="50%" width="50%"}

The `Transeq` tool converts the CDS sequences into protein sequences, which we then align to each other using `MAFFT`. The output is fed into `tranalign` along with the nucleotide sequences. `tranalign` produces a nucleotide alignment coherent with the protein alignment.








## Evolutionary Analysis

### What's the point?

[Wu et al.](https://doi.org/10.1038/s41586-020-2008-3) showed recombination between COVID-19 and bat coronaviruses located within the *S*-gene. We want to confirm this observation and provide a publicly accessible workflow for recombination detection.

In previous coronovirus outbreaks (SARS), retrospecive analyses determined that adaptive substitutions might have occured in the S-protein [Zhang et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1609170/), e.g., related to [ACE2 receptor utilization](https://www.embopress.org/doi/full/10.1038/sj.emboj.7600640). While data on COVID-19 are currenly limited, we investigated whether or not the lineage leading to them showed any evidence of positive diversifying selection.

### Outline

We employ a recombination detection algorithm (GARD) developed by [Kosakovsky Pond et al.](http://mbe.oxfordjournals.org/cgi/content/full/23/10/1891) and implemented in the `hyphy` package. To select a representative set of *S*-genes we perform a blast search using the *S*-gene CDS from [NC_045512](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512) as a query against the `nr` database. We select coding regions corresponding to the *S*-gene from a number of COVID-19 genomes, original SARS isolates. This set of sequences can be found in [this repository](S_nt.fna)

We then generate a codon-based alignment using the workflow shown below and perform the recombination analysis using the `gard` tool from the `hyphy` package. 

For selection analyses, we apply the [Adaptive Branch Site Random Effects](https://www.ncbi.nlm.nih.gov/pubmed/25697341) method to test whether or each branch of the tree shows evidence of diversifing positive selection along a fraction of sites using the `absrel` tool from the `hyphy` package. 

## Inputs

A set of unaligned CDS sequences for the *S*-gene.

Additionally, for aBSREL, a phylogenetic tree (for aBSREL).

### Outputs

A recombination report:

![](/assets/media/sars/dm_report.png){:height="50%" width="50%"}

and a map of possible recombination hotspots:

![](/assets/media/sars/dm_chart.png){:height="50%" width="50%"}

A selection analysis summary and tree (COVID-19 isolate is MN988668_1)

![](/assets/media/sars/dm_tree.png){:height="50%" width="50%"}

and a plot of the inferred &omega; distribution for the MN988668_1 branch.

![](/assets/media/sars/dm_selection.png){:height="50%" width="50%"}



### History and workflow

> TODO: add aBSREL workflow

A Galaxy workspace (history) containing the most current analysis can be imported from [here](https://usegalaxy.org/u/aun1/h/ncov-comp).

The publicly accessible [workflow](https://test.galaxyproject.org/u/anton/h/ncov-recomb) can be downloaded and installed on any Galaxy instance. It contains version information for all tools used in this analysis. 

![](/assets/media/sars/rec_wf.png){:height="50%" width="50%"}

The workflow takes unaligned CDS sequences, translates them with `EMBOSS:tanseq`, aligns translations using `mafft`, realigns original CDS input using the mafft alignment as a guide and sends this codon-based alignment to `gard`.






## Comparative analysis of coronovirus sequences

### What's the point?

What is the phylogenetic relationship between assembled sequences and other coronaviruses?

### Outline

We mapped Unicycler assembly produces at [step 1](https://github.com/galaxyproject/SARS-CoV-2/tree/master/Assembly) against `nr` database at NCBI using `blastn`  and downloaded [hit table](4GRC05K5014-Alignment-HitTable.csv). This analysis indicated that our assembly is 100% identical to [NC_045512](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512).

We then used this hit table to Galaxy workflow that:

 1. downloaded sequences
 2. aligned downloaded sequences against COVID-19 reference [NC_045512](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512) using `lastz`
 3. identified sequences that align with at least 75% of NC_045512
 4. created multiple alignment of sequences from the previous step using `mafft`
 5. computed a maximum likelihood tree using `iqtree`

### Inputs

The analysis takes two inputs:

 1. Hit table generated by blast
 2. Genbank file for COVID-19 reference genome [NC_045512](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512)

 The hit table has the following format:

 ```
COVID-19,MN988668.1,100.000,29781,0,0,1,29781,29838,58,0.0,54996
COVID-19,NC_045512.2,100.000,29781,0,0,1,29781,29839,59,0.0,54996
COVID-19,MN994468.1,99.993,29781,2,0,1,29781,29839,59,0.0,54985
COVID-19,MN985325.1,99.990,29781,3,0,1,29781,29839,59,0.0,54979
COVID-19,MN938384.1,99.990,29781,3,0,1,29781,29807,27,0.0,54979
COVID-19,MN997409.1,99.987,29781,4,0,1,29781,29839,59,0.0,54974
COVID-19,MN975262.1,99.983,29781,5,0,1,29781,29839,59,0.0,54968
....
```

the workflow:
 
  - extracts accession numbers (the second column) for hit table
  - downloads all corresponding FASTA files
  - aligned them using `lastz`
  - selected all sequences that align over at least 75% of the reference
  - uses these sequences to create multiple alignment and phylogenetic tree

### Outputs

1. A multiple alignment of sequences that align over at least 75% of the reference
2. A maximum likelihood tree


### History and workflow

Galaxy workspace (history) containing the most current analysis can be imported from [here](https://usegalaxy.org/u/aun1/h/ncov-comp).

The [workflow](https://usegalaxy.org/u/aun1/w/comp) is available at Galaxy public site and can downloaded and installed on any Galaxy instance. It contains version information for all tools used in this analysis. 

the workflow performs the following steps:
 
  - extracts accession numbers (the second column) for hit table
  - downloads all corresponding FASTA files
  - aligned them using `lastz`
  - selected all sequences that align over at least 75% of the reference
  - uses these sequences to create multiple alignment and phylogenetic tree

![](/assets/media/sars/comp_wf.png){:height="50%" width="50%"}
















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

[Dannon Baker](https://github.com/dannon),
[Marius Van Den Beek](https://github.com/mvdbeek), 
[John Chilton]( https://github.com/jmchilton), 
[Nate Coraor](https://github.com/natefoo), 
[Bjorn Gruning](https://github.com/bgruening),
[Delphine Larivière](https://github.com/Delphine-L), 
[Nicholas Keener](https://github.com/nickeener), 
[Sergei Kosakovsky](https://github.com/spond), 
[Wolfgang Maier](https://github.com/wm75),
[Anton Nekrutenko](https://github.com/nekrut), 
[James Taylor](https://github.com/jxtx), 
[Steven Weaver](https://github.com/stevenweaver)
