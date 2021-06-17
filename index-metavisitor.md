---
layout: subsite-galaxy
website: https://metavisitor.usegalaxy.eu
subdomain: metavisitor
gitter: ARTbio/metavisitor
---

# Welcome to the Metavisitor Galaxy instance

<img src="/assets/media/Galaxy-metavisitor-logo.png" alt="Galaxy Metavisitor"/>

{:.no_toc}

[Metavisitor](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0168397) is
a user-friendly and adaptable software to provide biologists, clinical researchers
and possibly diagnostic clinicians with the ability to robustly detect and reconstruct viral
genomes from complex deep sequence datasets. A set of modular bioinformatic tools and workflows
was implemented as the Metavisitor package in the [Galaxy framework](https://galaxyproject.org){:target="_blank"}.
Using the graphical Galaxy workflow editor, users with minimal computational skills can use existing
Metavisitor workflows or adapt them to suit specific needs by adding or modifying analysis modules.

The Metavisitor Galaxy implementation comprises tools and workflows that are maintained in
[ARTbio/metavisitor GitHub repository](https://github.com/ARTbio/metavisitor/tree/metavisitor2/extra-files/metavisitor)

# Content
{:.no_toc}

1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour]({{ page.website }}/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

# Training

**Want to learn more about Galaxy? Check out the following hands-on tutorials from [the Galaxy Training Network](https://galaxyproject.github.io/training-material/){:target=_"blank"}.**


# Available tools

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="blast_to_scaffold" %} | blast_to_scaffold - Generate DNA scaffold from blastn or tblastx alignment of Contigs  | -
{% include tool.html id="bowtie2" %} | Bowtie2 - map reads against reference genome | -
{% include tool.html id="cherry_pick_fasta" %} | Pick Fasta sequences - with header satisfying a query string | -
{% include tool.html id="concatenate_multiple_datasets" %} | Concatenate multiple datasets - tail-to-head by specifying how | -
{% include tool.html id="data_manager_bowtie2_index_builder" %} | Bowtie2 index - Data Manager for building bowtie2 indexes | -
{% include tool.html id="data_manager_bowtie_index_builder" %} | Bowtie index - Data Manager for building bowtie indexes | -
{% include tool.html id="data_manager_fetch_genome_dbkeys_all_fasta" %} | Create DBKey and Reference Genome - Allows optionally defining a new DBKEY and retrieves a FASTA file and populate the all_fasta.loc data table | -
{% include tool.html id="fasta_filter_by_length" %} | Filter sequences by length | -
{% include tool.html id="fastx_trimmer" %} | Trim sequences | -
{% include tool.html id="fetch_fasta_from_ncbi" %} | Retrieve FASTA from NCBI | -
{% include tool.html id="khmer_normalize_by_median" %} | Normalize By Median - Filter reads using digital normalization via k-mer abundances | -
{% include tool.html id="blastparser_and_hits" %} | Parse blast output and compile hits - for virus discovery | -
{% include tool.html id="cap3" %} | cap3 - Sequence Assembly tool | -
{% include tool.html id="sequence_format_converter" %} | sequence_format_converter - various fasta to tabular conversions | -
{% include tool.html id="oases" %} | Oases_optimiser - Auto optimise de novo RNA-seq Oases/Velvet assembly | -
{% include tool.html id="sr_bowtie" %} | sR_bowtie - for small RNA short reads | -
{% include tool.html id="small_rna_maps" %} | small_rna_maps - Generates small read maps from alignment BAM files | -
{% include tool.html id="ncbi_blast_plus" %} | ncbi_blast_plus - NCBI BLAST+ | -
{% include tool.html id="regex_find_replace" %} | Regex Find And Replace - Use python regular expressions to find and replace text | -
{% include tool.html id="sra_tools" %} | sra_tools - NCBI Sequence Read Archive toolkit utilities | -
{% include tool.html id="trinity" %} | trinity - Trinity (from the Trinity tool suite) | -
{% include tool.html id="spades" %} | spades - St. Petersburg genome assembler | -
{% include tool.html id="yac_clipper" %} | yac_clipper - Clips 3' adapters for small RNA sequencing reads | -
{% include tool.html id="vsearch" %} | VSearch search - VSEARCH including searching, clustering, chimera detection, dereplication, sorting, masking and shuffling of sequences | -
{% include tool.html id="blast_unmatched" %} | Blast Unmatched - get query sequences that didn't get a match during a blast | -
{% include tool.html id="fasta_compute_length" %} | fasta_compute_length - Compute sequence length | -
{: .table.table-striped .tooltable}


# Acknowledgments

The authors would like to thank Björn Grüning and @galaxyproject

# Citation

Please add the following when using the [metavisitor.usegalaxy.eu](https://metavisitor.usegalaxy.eu) Galaxy portal:

*The Galaxy server that was used for some calculations is in part funded by Collaborative Research Centre 992 Medical Epigenetics (DFG grant SFB 992/1 2012) and
German Federal Ministry of Education and Research (BMBF grants 031 A538A/A538C RBC, 031L0101B/031L0101C de.NBI-epi, 031L0106 de.STAIR (de.NBI)).*

More information on [how to cite Galaxy](https://galaxyproject.org/citing-galaxy/).
