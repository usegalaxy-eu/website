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
{% include tool.html id="blast_to_scaffold" %} | blast_to_scaffold Generate DNA scaffold from blastn or tblastx alignment of Contigs  | -
{% include tool.html id="bowtie2" %} | Bowtie2 - map reads against reference genome | -
{% include tool.html id="psy_maps" %} | Visualization on a geographical map with psyplot | -
{% include tool.html id="mean_per_zone" %} | Plot zonal statistics from a raster and shapefile on a geographical map | -
{: .table.table-striped .tooltable}

## GIS data handling

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="gdal_gdalinfo" %} | [Lists information about a raster dataset](https://gdal.org/programs/gdalinfo.html)  | -
{% include tool.html id="gdal_gdaladdo" %} | [Builds or rebuilds overview images](https://gdal.org/programs/gdaladdo.html)  | -
{% include tool.html id="gdal_gdalbuildvrt" %} | [Builds a VRT (Virtual Dataset) from a list of datasets](https://gdal.org/programs/gdalbuildvrt.html)  | -
{% include tool.html id="gdal_gdal_merge" %} | [Mosaic a set of images](https://gdal.org/programs/gdal_merge.html)  | -
{% include tool.html id="gdal_gdal_translate" %} | [Convert raster data between different formats](https://gdal.org/programs/gdal_translate.html)  | -
{% include tool.html id="gdal_gdalwarp" %} | [Image reprojection and warping utility](https://gdal.org/programs/gdalwarp.html)  | -
{% include tool.html id="gdal_ogr2ogr" %} |  [Converts simple features data between file formats](https://gdal.org/programs/ogr2ogr.html) | -
{% include tool.html id="gdal_ogrinfo" %} |  [Lists information about an OGR-supported data source](https://gdal.org/programs/ogrinfo.html) | -
{: .table.table-striped .tooltable}

# Acknowledgments

The authors would like to thank Bérénice Batut,  Björn Grüning, Anup Kumar and @galaxyproject

# Citation

Please add the following when using the [metavisitor.usegalaxy.eu](https://metavisitor.usegalaxy.eu) Galaxy portal:

*The Galaxy server that was used for some calculations is in part funded by Collaborative Research Centre 992 Medical Epigenetics (DFG grant SFB 992/1 2012) and
German Federal Ministry of Education and Research (BMBF grants 031 A538A/A538C RBC, 031L0101B/031L0101C de.NBI-epi, 031L0106 de.STAIR (de.NBI)).*

More information on [how to cite Galaxy](https://galaxyproject.org/citing-galaxy/).
