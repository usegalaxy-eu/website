---
layout: subsite-galaxy
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

 * data visualization:
   * [msi qualitycontrol](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_quality_report/cardinal_quality_report/)
   * [msi mz images](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_mz_images/cardinal_mz_images/)
   * [msi spectra plot](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_spectra_plots/cardinal_spectra_plots/)
 * data preprocessing:
   * [MALDIquant preprocessing](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/maldi_quant_preprocessing/maldi_quant_preprocessing/)
   * [MALDIquant peak detection](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/maldi_quant_peak_detection/maldi_quant_peak_detection/)
   * [msi preprocessing](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_preprocessing/cardinal_preprocessing/)
 * data manipulation:
   * [msi filtering](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_filtering/cardinal_filtering/)
   * [msi combine](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_combine/cardinal_combine/)
   * [msi data exporter](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_data_exporter/cardinal_data_exporter/)
 * statistical tools:
   * [msi segmentation](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_segmentations/cardinal_segmentations/)
   * [msi classification](https://usegalaxy.eu/root?tool_id=toolshed.g2.bx.psu.edu/repos/galaxyp/cardinal_classification/cardinal_classification/)


# Tutorials

ToDo

# Workflows

To orchestrate tools and help users with their analyses, several workflows are available. They formally orchestrate tools in a defined order and with defined parameters, but they are customizable (tools, order, parameters).

The workflows are available in the [Shared Workflows](https://cheminformatics.usegalaxy.eu/workflows/list_published), with the label "***cheminformatics***".

# Contributors

  * [Biomedical Computer Vision Group](http://www.bioquant.uni-heidelberg.de/research/groups/biomedical_computer_vision.html) lead by Karl Rohr
  * Thomas Wollmann
  * [Greg von Kuster](https://github.com/gregvonkuster)

# References

{% bibliography --cited --prefix index-metagenomics --group_by none %}
