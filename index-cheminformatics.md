---
layout: subsite-galaxy
subdomain: cheminformatics
---

# Computational chemistry with Galaxy

<br/>
<img src="/assets/media/cheminformatics.png" height="300px" alt="Cheminformatics" align="right"/>

Welcome to the **ChemicalToolbox** -- a webserver for processing, analysing and visualising chemical data, and performing molecular simulations. This server is a flavor of the European Galaxy instance, usegalaxy.eu.

1. TOC
{:toc}


# Get started

Are you new to Galaxy, or returning after a long time, and looking for help to get started? Take [a guided tour](https://cheminformatics.usegalaxy.eu/tours/core.galaxy_ui){:target="_blank"} through Galaxy's user interface.

A good place to start is our [tutorials](#tutorials), which provide an introduction to the cheminformatics and molecular dynamics tools in Galaxy.

You can also check out the standard but customizable [workflows](#workflows) available there.

# Tools

Almost a hundred different tools for cheminformatics and molecular dynamics have been integrated into the ChemicalToolbox. A selection are displayed below.

## Get data

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="pubchem" %} | Download all compounds from PubChem | [Kim et al., 2016](https://dx.doi.org/10.1093%2Fnar%2Fgkv951){:target="_blank"}
{% include tool.html id="chembl" %} | Download molecules from ChEMBL | [Davies et al, 2015](https://doi.org/10.1093/nar/gkv352){:target="_blank"}
{% include tool.html id="pdb" %} | Download a file from the Protein Data Bank | [Berman, 2000](http://dx.doi.org/10.1093/nar/28.1.235){:target="_blank"}
{:.table.table-striped}

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
{:.table.table-striped}


## Compute chemical properties

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="genProp" %} | Compute physico-chemical properties for a set of molecules  | [N M O'Boyle,2011](https://doi.org/10.1186/1758-2946-3-33){:target="_blank"}
{% include tool.html id="NPL" %} | Natural product likeness calculator  | [Jayaseelan, Kalai Vanii, 2012](http://dx.doi.org/10.1186/1471-2105-13-106){:target="_blank"}
{% include tool.html id="QED" %} | Drug-likeness quantitative estimation (QED) | [Bickerton et al., 2012](https://doi.org/10.1038/nchem.1243){:target="_blank"}
{% include tool.html id="mordred" %} | Molecular descriptor calculator  | [Moriwaki et al., 2018](https://doi.org/10.1186/s13321-018-0258-y){:target="_blank"}
{% include tool.html id="chemfp" %} | Fingerprints with chemfp  | [Dalke, 2013](https://doi.org/10.1186/1758-2946-5-s1-p36){:target="_blank"}
{% include tool.html id="tbClust" %} | Taylor-Butina clustering | [Dalke, 2013](https://doi.org/10.1186/1758-2946-5-s1-p36){:target="_blank"}
{% include tool.html id="nxnClust" %} | NXN clustering | [Dalke, 2013](https://doi.org/10.1186/1758-2946-5-s1-p36){:target="_blank"}
{:.table.table-striped}


## Docking

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="vina" %} | Docking with AutoDock Vina | [Trott et al., 2009](https://doi.org/10.1002/jcc.21334){:target="_blank"}
{% include tool.html id="rbdock" %} | Docking with rDock | [Ruiz-Carmona et al., 2014](https://doi.org/10.1371/journal.pcbi.1003571){:target="_blank"}
{% include tool.html id="sucos" %} | Score docked poses using SuCOS | [Leung et al., 2019](https://doi.org/10.26434/chemrxiv.8100203.v1){:target="_blank"}
{% include tool.html id="fpocket" %} | Search a protein for potential binding sites | [Schmitdke et al., 2010](https://doi.org/10.1093/nar/gkq383){:target="_blank"}
{:.table.table-striped}


## Molecular dynamics simulation

Tool | Description | Reference
--- | --- | ---
{% include tool.html id="gmxSetup" %} | Produce a topology using GROMACS for a given protein structure  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxSolvate" %} | Solvate a system using GROMACS | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxEM" %} | Energy minimization using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxSim" %} | MD simulation using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxRestraints" %} | Calculate position restraints using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxMakeNDX" %} | Create an index file using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxEnergy" %} | Extract energy components using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxTrj" %} | Process MD trajectories using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxEditconf" %} | Structure configuration using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="gmxFEP" %} | Alchemical free energy simulations using GROMACS  | [Abraham et al., 2015](https://doi.org/10.1016/j.softx.2015.06.001){:target="_blank"}
{% include tool.html id="antechamber" %} | Process input files with AmberTools  | [Case et al., 2005](https://doi.org/10.1002/jcc.20290){:target="_blank"}
{% include tool.html id="acpype" %} | Produce GROMACS topologies with acpype  | [Sousa da Silva et al., 2012](https://doi.org/10.1186/1756-0500-5-367){:target="_blank"}
{:.table.table-striped}


## Molecular dynamics analysis

Tool | Description | Reference
--- | --- | ---
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

The workflows are available in the [Shared Workflows](https://cheminformatics.usegalaxy.eu/workflows/list_published), with the labels "***cheminformatics***" or "**moleculardynamics**".

Workflow | Description
--- | ---
[Library preparation](https://usegalaxy.eu/u/sbray/w/library-download-final-2) | Preparation of ligand library using PubChem, ChEMBL and ZINC
[Protein-ligand docking](https://cheminformatics.usegalaxy.eu/u/sbray/w/protein-ligand-docking-final) | Docking with AutoDock Vina
[Hole filling](https://cheminformatics.usegalaxy.eu/u/sbray/w/hf080120) | Expanding a library into gaps in the chemical space 
[Cheminformatics-ML](https://cheminformatics.usegalaxy.eu/u/sbray/w/cheminformatics-ml) | Machine learning for predicting small molecule protein interactions
[GROMACS](https://cheminformatics.usegalaxy.eu/u/simonbray/w/molecular-dynamics-1) | Molecular dynamics simulation with GROMACS
[Bio3D](https://cheminformatics.usegalaxy.eu/u/tsenapathi/w/md-analysis-using-bio3d) | Molecular dynamics analysis with Bio3D
{:.table.table-striped}

# Contributors

  * [Simon Bray](https://github.com/simonbray)
  * [Tharindu Senapathi](https://github.com/tsenapathi)
  * [Chris Barnett](https://github.com/chrisbarnettster)
  * [Anup Kumar](https://github.com/anuprulez)
  * Xavier Lucas
  * [Björn Grüning](https://github.com/bgruening)

# Citation

  * Simon Bray, Xavier Lucas, Anup Kumar and Björn Grüning. **"The ChemicalToolbox: reproducible, user-friendly cheminformatics analysis on the Galaxy platform"**, Journal of Cheminformatics, doi: [10.1186/s13321-020-00442-7](https://doi.org/10.1186/s13321-020-00442-7)

  * Tharindu Senapathi, Simon Bray, Christopher B Barnett, Björn Grüning, Kevin J Naidoo.
**"Biomolecular Reaction and Interaction Dynamics Global Environment (BRIDGE)", Bioinformatics**, Volume 35, Issue 18, 15 September 2019, Pages 3508–3509, doi: [10.1093/bioinformatics/btz107](https://doi.org/10.1093/bioinformatics/btz107)
