---
layout: subsite-galaxy
subdomain: imaging
---


<br/>
<img src="/assets/media/imaging.png" height="100px" alt="Cheminformatics"/>

Welcome to our **Imaging** flavour of UseGalaxy.eu -- a webserver to process and analyse (biomedical) images.


1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://imaging.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

Want to learn about imaging? Check our [tutorials](#tutorials) or take one of our guided tour:

TODO

Check also the standard but customizable [workflows](#workflows) available there.

# Tools

Several tools are integrated in this custom Galaxy instance. They were chosen for their use in exploitation of chemical data:

ToDo

 * data visualization:
   * {% include tool.html id="cardinal_quality_report" label="msi qualitycontrol" %}
   * {% include tool.html id="cardinal_mz_images" label="msi mz images" %}
   * {% include tool.html id="cardinal_spectra_plot" label="msi spectra plot" %}
 * data preprocessing:
   * {% include tool.html id="MALDIquant_preprocessing" label="MALDIquant preprocessing" %}
   * {% include tool.html id="MALDIquant_peak_detection" label="MALDIquant peak detection" %}
   * {% include tool.html id="cardinal_preprocessing" label="msi preprocessing" %}
 * data manipulation:
   * {% include tool.html id="cardinal_filtering" label="msi filtering" %}
   * {% include tool.html id="cardinal_combine" label="msi combine" %}
   * {% include tool.html id="cardinal_data exporter" label="msi data exporter" %}
 * statistical tools:
   * {% include tool.html id="cardinal_segmentation" label="msi segmentation" %}
   * {% include tool.html id="cardinal_classification" label="msi classification" %}


# Tutorials

ToDo

# Workflows

To orchestrate tools and help users with their analyses, several workflows are available. They formally orchestrate tools in a defined order and with defined parameters, but they are customizable (tools, order, parameters).

The workflows are available in the [Shared Workflows](https://imaging.usegalaxy.eu/workflows/list_published), with the label "***imaging***".

# Contributors

  * [Biomedical Computer Vision Group](http://www.bioquant.uni-heidelberg.de/research/groups/biomedical_computer_vision.html) lead by Karl Rohr
  * Thomas Wollmann
  * [Greg von Kuster](https://github.com/gregvonkuster)
  * [Melanie Föll](https://github.com/foellmelanie/)
  * [Björn Grüning](https://github.com/bgruening)


# References

{% bibliography --cited --prefix index-metagenomics --group_by none %}
