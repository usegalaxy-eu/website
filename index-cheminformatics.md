---
layout: subsite-galaxy
---


<br/>
<img src="/assets/media/cheminformatics.png" height="100px" alt="Cheminformatics"/>

Welcome to our **Computational Chemistry** flavour of UseGalaxy.eu -- a webserver to process, analyse and visualize chemical data.


1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://cheminformatics.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

Want to learn about computational chemistry? Check our [tutorials](#tutorials) or take one of our guided tour:

TODO

Check also the standard but customizable [workflows](#workflows) available there.

# Tools

Several tools are integrated in this custom Galaxy instance. They were chosen for their use in exploitation of chemical data:


## chemical structure conversion and manipulation tools

Tool | Description | Reference
--- | --- | ---
[remSmallMol]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_remsmall/openbabel_remSmall/) | Remove small molecules | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[AddH]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_addh/openbabel_addh/) | Add hydrogen atoms at a certain pH value | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[RemDupMol]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_remduplicates/openbabel_remDuplicates/) | Remove duplicated molecules  | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[remProtState]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_remove_protonation_state/openbabel_remove_protonation_state) | Remove protonation state of every atom | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[comConvert]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_compound_convert/openbabel_compound_convert/) | Compound Convert Converts various chemistry and molecular modeling data files | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[remConterIons]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_remions/openbabel_remIons/) | Remove counterions and fragments | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[changTitle]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_change_title/openbabel_change_title) | Change Title to meta-data value | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[remCountIo]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_change_title/openbabel_change_title) | Change Title to meta-data value | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{:.table.table-striped}


## compute chemical properties

Tool | Description | Reference
--- | --- | ---
[genProp]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/openbabel_genprop/openbabel_genProp/) | Compute physico-chemical properties for a set of molecules  | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
[NPL]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/natural_product_likeness/ctb_np-likeness-calculator) | Natural Product likeness calculator  | [Jayaseelan, Kalai Vanii, 2012](http://dx.doi.org/10.1186/1471-2105-13-106){:target="_blank"}
[QED]({{ page.website }}/??tool_id=toolshed.g2.bx.psu.edu/repos/bgruening/silicos_it/ctb_silicos_qed/0.1) | Drug-likeness quantitative estimation (QED)
 | [Bickerton et al., 2012](https://doi.org/10.1038/nchem.1243){:target="_blank"}
{:.table.table-striped}



# Tutorials

ToDo

# Workflows

To orchestrate tools and help users with their analyses, several workflows are available. They formally orchestrate tools in a defined order and with defined parameters, but they are customizable (tools, order, parameters).

The workflows are available in the [Shared Workflows](https://cheminformatics.usegalaxy.eu/workflows/list_published), with the label "***cheminformatics***".

# Contributors

  * [Chris Barnett](https://www.chemistry.uct.ac.za/cem/staff/academic/barnett)
  * Simon Bray
  * Tharindu Senapathi
  * Björn Grüning

# References

{% bibliography --cited --prefix index-metagenomics --group_by none %}
