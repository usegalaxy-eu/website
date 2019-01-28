---
layout: subsite-galaxy
---


<br/>

Welcome to **Galaxy GraphClust** -- a webserver to process and analyse structural clustering of RNA secondary structures.

Galaxy-GraphClust is a web-based workflow for structural clustering of RNA secondary structures developed as an instance of [GraphClust](http://www.bioinf.uni-freiburg.de/Software/GraphClust) Perl pipeline inside the Galaxy framework. It consists of a set of integrated Galaxy tools and different flavors of clustering workflows built upon these tools.

1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://metagenomics.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

### Video tutorial

[This video tutorial](https://www.youtube.com/watch?v=fJ6tUt_6uas) can be helpful to get a visually comprehensive introduction on setting-up and running Galaxy-GraphClust.

[![IMAGE ALT TEXT HERE](/assets/media/graphclust_video-thumbnail.png)](https://www.youtube.com/watch?v=fJ6tUt_6uas){:target="_blank"}

### Interactive tours
Interactive Tours are available for Galaxy and Galaxy-GraphClust. To run the tours please on top panel go to **Help→Interactive Tours** and click on one of the tours prefixed **GraphClust workflow**. You can check the other tours for a more general introduction to the Galaxy interface.

### Import or upload a workflow

To import or upload an existing workflow, on the top panel go to **Workflow** menu. On top right side of the screen click on **Upload or import workflow** button. You can either upload workflow from your local system or by providing the URL of the workflow. To have an access to workflow menu you must be logged in. You can download workflows from the following links 

  * MotifFinder: [GraphClust-MotifFinder](https://usegalaxy.eu/u/graphclust2/w/graphclust2--motiffinder)
  * Workflow main: [GraphClust_1r](https://usegalaxy.eu/u/graphclust2/w/graphclust2--main-1r)
  * Workflow main, preconfigured for two rounds : [GraphClust_2r](https://usegalaxy.eu/u/graphclust2/w/graphclust2--main-2r)


GraphClust pipeline overview
===============================

GraphClust pipeline for clustering similar RNA sequences together is a multi-step rather complex pipeline. Overall it consists of three major phases: a) sequence based pre-clustering b) encoding predicted RNA structures as graph features c) iterative fast candidate clustering then refinement

<!-- ![GraphClust pipeline overview (Heyne et al. 2012)](./assets/img/graphclust_pipeline.png)

*GraphClust pipeline overview (Heyne et al. 2012)*
 -->
![GraphClust-2 workflow overview](https://github.com/BackofenLab/GraphClust-2/blob/master/assets/img/figure-pipeline_zigzag.png) 

Below is a coarse-grained correspondence list of GraphClust2 tool names with each step:


|   Stage  | Galaxy Tool Name | Description|
| :--------------------: | :--------------- | :----------------|
|1 | [Preprocessing](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_preprocessing/preproc/0.5){:target="_blank"} | Input preprocessing (fragmentation)|
|2 | [fasta_to_gspan](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_fasta_to_gspan/gspan/0.4){:target="_blank"} | Generation of structures via RNAshapes and conversion into graphs|
|3 | [NSPDK_sparseVect](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_nspdk/nspdk_sparse/9.2.3){:target="_blank"} | Generation of graph features via NSPDK |
|4| [NSPDK_candidateClusters](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_nspdk/NSPDK_candidateClust/9.2.3){:target="_blank"} | min-hash based clustering of all feature vectors, output top dense candidate clusters|
|5| [PGMA_locarna](https://usegalaxy.eu/?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_prepocessing_for_mlocarna/preMloc/0.4){:target="_blank"},[locarna](https://usegalaxy.eu/tool_runner?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_mlocarna/locarna_best_subtree/0.4){:target="_blank"}, [CMfinder](https://usegalaxy.eu/?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_cmfinder/cmFinder/0.4){:target="_blank"} | Locarna based clustering of each candidate cluster, all-vs-all pairwise alignments, create multiple alignments along guide tree, select best subtree, and refine alignment.|
|6| [Build covariance models](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/infernal/infernal_cmbuild/1.1.0.2){:target="_blank"} |  create candidate model |
|7| [Search covariance models](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/infernal/infernal_cmsearch/1.1.0.2){:target="_blank"} | Scan full input sequences with Infernal's cmsearch to find missing cluster members |
|8,9| [Report results](https://usegalaxy.eu/?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam/graphclust_postprocessing/glob_report/0.5) and [conservation evaluations](https://usegalaxy.eu/?tool_id=toolshed.g2.bx.psu.edu/repos/rnateam%2Fgraphclust_aggregate_alignments/graphclust_aggregate_alignments/0.1) | Collect final clusters and create example alignments of top cluster members|
{: .table.table-striped}

### Input:
The input to the workflow is a set of putative RNA sequences in FASTA format. Inside the `sample_data` directory you can find examples of the input format. In this case the data is from a benchmark set based on Rfam 12.0 and additionally is optionally labeled with reference Rfam family members.

### Configuring the workflows:
Please proceed with the interactive tour named `GraphClust workflow step by step`, available under `Help->Interactive Tours`
Check FAQs for understanding the frequently important parameters. 

### Output:
The output contains the predicted clusters, where similar putative input RNA sequences form a cluster. Additionally overall status of the clusters and the matching of cluster elements is reported for each cluster. 

Please check the interactive tours and GraphClust [README](http://www.bioinf.uni-freiburg.de/Software/GraphClust/README) for more information about the reported info and files.


# Support & Bug Reports

You can file an [github issue](https://github.com/BackofenLab/docker-galaxy-graphclust/issues) or ask us on the [Galaxy development list](http://lists.bx.psu.edu/listinfo/galaxy-dev).


# References

{% bibliography --cited --prefix index-metagenomics --group_by none %}
