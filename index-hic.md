---
layout: galaxy
---
# Galaxy HiCExplorer

Welcome to the Galaxy HiCExplorer -- a webserver to process, analyse and visualize Hi-C data. 

<div>
    <img src="{{ "/assets/media/hicex2.png" | absolute_url }}" width="400px" alt="HiCExplorer logo" />
</div>

## New to Galaxy?

Take <a target="_parent" href="https://hicexplorer.usegalaxy.eu/tours/core.galaxy_ui">a guided tour</a> through Galaxy's user interface.

## New to Galaxy HiCExplorer?

Take <a target="_parent" href="https://hicexplorer.usegalaxy.eu/tours/hixexplorer">a guided tour</a> for an introduction in Galaxy HiCExplorer and Hi-C data analysis.

To make the first steps with the Galaxy HiCExplorer easier we provide a tutorial on the <a target="_parent" href="http://galaxyproject.github.io/training-material/topics/epigenetics/tutorials/hicexplorer/tutorial.html">Galaxy Training</a> network where you can analyse Hi-C data of Drosophila melanogaster.


## Example data

The example data is provided on zenodo: <a href="https://doi.org/10.5281/zenodo.1183661"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1183661.svg" alt="DOI"></a>

The data is provided in <a target="_parent" href="https://hicexplorer.usegalaxy.eu/library/list#folders/F8607ddb1c5387e36">the shared data library</a> of Galaxy HiCExplorer too. Additional to the data hosted on zenodo it contains preprocessed intermediate files of the Drosophila melanogaster tutorial.

Galaxy HiCExplorer can process large Hi-C data. In <a target="_parent" href="">this</a> history we processed Hi-C data with around 140 million reads. 

## Galaxy HiCExplorer -- many possibilities 

<div>
    <figure>
        <img src="{{ "/assets/media/publication_plots.png" | absolute_url }}" width="400px" alt="HiCExplorer plots" />
        <figcaption> <b>(A)</b> Galaxy HiCExplorer workflows and tools. Quality control tools: <b>(B)</b> Output of hicCorrelate comparing two wild types and one knockdown samples. <b>(C)</b> Output of hicPlotDistVsCounts that shows changes of the number of contacts for different conditions. Analysis tools: <b>(D)</b> hicPlotMatrix of the Pearson correlation matrix derived from a contact matrix for chromosome 6 in mouse computed with hicTransform. The optional data track at the bottom shows the first eigenvector for A/B compartment obtained using hicPCA. <b>(E)</b> The pixel difference between a Hi-C corrected matrix for wild type condition and a knock down was computed using hicCompareMatrices and a 7Mb region is visualized using hicPlotMatrix. Visualization tools: <b>(F)</b> Contact matrix plot of a 80 to 105 Mb region of chromosome 2 in log scale. <b>(G)</b> Example output of hicPlotViewpoint showing the corrected number of Hi-C contacts for a single bin in chromosome 5 (output similar to 4C-seq) (<a target="_parent" href="https://doi.org/10.1101/gr.213066.116">Andrey 2017</a>). <b>(H)</b> A Hi-C matrix was converted into an observed vs. expected matrix using hicTransform and this matrix, together with the location of high-affinity sites from (<a target="_parent" href="https://doi.org/10.1016/j.molcel.2015.08.024">Ramirez 2015</a>) were used to run hicAggregateContacts. <b>(I)</b> 85 Mb to 110 Mb region from human chromosome 2 visualized using hicPlotTADs. TADs were computed by hicFindTADs. The additional tracks added correspond to: TAD- separation score (as reported by hicFindTADs), chromatin state , principal component 1 (A/B compartment) computed using hicPCA, ChIP-seq coverage for the H3K27ac mark, DNA methylation, and a gene track. Hi-C data for <b>B</b>, <b>C</b>, <b>E</b> and <b>H</b> from Drosophila melanogaster S2 cells from (<a target="_parent" href="https://doi.org/10.1038/s41467-017-02525-w">Ramirez 2018</a>). Hi-C data for <b>D</b>, <b>F</b> and <b>I</b> from mouse cardiac myocytes(<a target="_parent" href="https://doi.org/10.1038/s41467-017-01724-9 ">Nothjunge 2017</a>). Additional tracks in <b>I</b> from(<a target="_parent" href="https://doi.org/10.1038/s41467-017-01724-9 ">Nothjunge 2017</a>).
        </figcaption>
    </figure>
</div>


## Workflows

To automatize different consecutive steps we provide the following workflows:

 - <a href="https://usegalaxy.eu/u/joachim-wolff/w/workflow-hicexplorer-hicsummatrix">hicSumMatrixWorkflow</a>
 - <a href="https://usegalaxy.eu/u/joachim-wolff/w/workflow-hicexplorer-hicplotmatrix">hicPlotMatrix</a>



