---
layout: subsite-galaxy
subdomain: cheminformatics
---

# Cheminformatics with Galaxy

<br/>
<img src="/assets/media/cheminformatics.png" height="300px" alt="Cheminformatics" align="right"/>

Welcome to our **Computational Chemistry** flavour of UseGalaxy.eu -- a webserver for processing, analysing and visualising chemical data, and performing molecular simulations.

1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://cheminformatics.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

A good place to start is our [tutorials](#tutorials), which provide an introduction to the molecular dynamics tools in Galaxy.

You can also check out the standard but customizable [workflows](#workflows) available there.

# Tools

Several tools are integrated in this custom Galaxy instance. They were chosen for their use in exploitation of chemical data:


## Chemical structure conversion and manipulation tools

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="remSmallMol" %} | Remove small molecules | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="AddH" %}  | Add hydrogen atoms at a certain pH value | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="RemDupMol" %}  | Remove duplicated molecules  | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="remProtState" %}  | Remove protonation state of every atom | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="comConvert" %}  | Compound Convert Converts various chemistry and molecular modeling data files | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="remConterIons" %}  | Remove counterions and fragments | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="changTitle" %}  | Change Title to meta-data value | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="remCountIo" %}  | Change Title to meta-data value | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{:.table.table-striped}


## Compute chemical properties

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="genProp" %} | Compute physico-chemical properties for a set of molecules  | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="NPL" %} | Natural Product likeness calculator  | [Jayaseelan, Kalai Vanii, 2012](http://dx.doi.org/10.1186/1471-2105-13-106){:target="_blank"}
{% include tool.html id="QED" %} | Drug-likeness quantitative estimation (QED) | [Bickerton et al., 2012](https://doi.org/10.1038/nchem.1243){:target="_blank"}
{:.table.table-striped}

## Molecular dynamics tools

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="gmxSetup" %} | Produce a topology using GROMACS for a given protein structure  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxSolvate" %} | Solvate a system using GROMACS | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxEM" %} | Energy minimization using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxNVT" %} | NVT equilibration using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxNPT" %} |  NPT equilibration using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxMD" %} | Production simulation using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="mdaDistance" %} | Distance analysis using MDAnalysis  | [Agrawal et al., 2011](https://doi.org/10.1002/jcc.21787){:target="_blank"}
{% include tool.html id="mdaDihedral" %} | Dihedral analysis using MDAnalysis  | [Agrawal et al., 2011](https://doi.org/10.1002/jcc.21787){:target="_blank"}
{% include tool.html id="mdaRDF" %} | Radial distribution function between two atoms  | [Agrawal et al., 2011](https://doi.org/10.1002/jcc.21787){:target="_blank"}
{% include tool.html id="mdaAngle" %} | Angle analysis using MDAnalysis | [Agrawal et al., 2011](https://doi.org/10.1002/jcc.21787){:target="_blank"}
{% include tool.html id="mdConverter" %} | Interconvert between MD file formats | [McGibbon et al., 2015](https://doi.org/10.1016/j.bpj.2015.08.015){:target="_blank"} [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="packmol" %} | Create initial MD configurations | [Martinez et al., 2009](https://doi.org/10.1002/jcc.21224){:target="_blank"}
{% include tool.html id="bio3dPCA" %} | Apply PCA to an MD trajectory | [Grant et al., 2006](https://doi.org/10.1093/bioinformatics/btl461){:target="_blank"}
{% include tool.html id="bio3dRMSD" %} | Calculate RMSD for an MD trajectory | [Grant et al., 2006](https://doi.org/10.1093/bioinformatics/btl461){:target="_blank"}
{% include tool.html id="bio3dRMSF" %} | Calculate RMSF for an MD trajectory | [Grant et al., 2006](https://doi.org/10.1093/bioinformatics/btl461){:target="_blank"}
{:.table.table-striped}

# Tutorials
- Visit [the Galaxy training website](https://galaxyproject.github.io/training-material/topics/computational-chemistry/) for tutorials on using the Galaxy tools for molecular dynamics.

🙋 Are additional tutorials needed? [Please make a request.](https://github.com/galaxycomputationalchemistry/galaxy-tools-compchem/issues)

# Workflows

To orchestrate tools and help users with their analyses, several workflows are available. They formally orchestrate tools in a defined order and with defined parameters, but they are customizable (tools, order, parameters).

The workflows are available in the [Shared Workflows](https://cheminformatics.usegalaxy.eu/workflows/list_published), with the label "***cheminformatics***".

Workflow | Description
--- | ---
[GROMACS](https://cheminformatics.usegalaxy.eu/u/simonbray/w/molecular-dynamics-1) | Molecular dynamics simulation with GROMACS
[Bio3D](https://cheminformatics.usegalaxy.eu/u/tsenapathi/w/md-analysis-using-bio3d) | Molecular dynamics analysis with Bio3D
{:.table.table-striped}

# Contributors

  * [Simon Bray](https://github.com/simonbray)
  * [Tharindu Senapathi](https://github.com/tsenapathi)
  * [Chris Barnett](https://github.com/chrisbarnettster)
  * [Björn Grüning](https://github.com/bgruening)

# Citation

Tharindu Senapathi, Simon Bray, Christopher B Barnett, Björn Grüning, Kevin J Naidoo.
**"Biomolecular Reaction and Interaction Dynamics Global Environment (BRIDGE)", Bioinformatics**, Volume 35, Issue 18, 15 September 2019, Pages 3508–3509, doi: [10.1093/bioinformatics/btz107](https://doi.org/10.1093/bioinformatics/btz107)
