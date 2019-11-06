---
layout: default-galaxy
---
<style type="text/css">
#maincontainer {
width: 100% !important;
}

.mcard {
  box-shadow: 0px 0px 10px grey;
  display: flex;
  width: 300px;
  flex-direction: column;
  margin: 1em;
  padding: 1em;
}
.mcard .card-img-top {
  width: 100%;
}
.mcard h2{
  text-align: center;
  color: #333;
  padding: 0.5em;
}
.mcard:hover {
  box-shadow: 0px 0px 10px black;
}

.flex-container {
  padding: 0;
  margin: 0;
  list-style: none;

  display: -webkit-box;
  display: -moz-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;

  -webkit-flex-flow: row wrap;
  justify-content: flex-start;
}

.mcard img {
margin: auto;
}

</style>

Welcome to the live instance of the European Galaxy server. This is your gateway to start interactive tools, such as
Jupyter, RStudio or other web-applications. Each Interactive Tool runs in its own container on the <a href="https://www.denbi.de/cloud" target="_blank">de.NBI-cloud</a>.
Every user can start up to 5 different interactive tools simultanously and can keep them running upto 30 days.
You can interact with Galaxy via the Galaxy API and in Jupyter and RStudio we have added convinient functions (put/get) to transfer data
back and forth between Galaxy and Jupyter resp. RStudio. Of course you can also store your entire Notebook or R session back to Galaxy and
save all provanace information.

If you start an Interactive tool it will keep spinning in a yellow state as long as the Container is running. To open your Tool you open the link
at <a href="https://live.usegalaxy.eu/interactivetool_entry_points/list" target="_top">User Active InteractiveTools</a>. The eye icon of your Galaxy dataset
is not working yet.

Enjoy!

<div class="flex-container">
    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_jupyter_notebook" target="_top">
      <img class="card-img-top" src="https://jupyter.org/assets/main-logo.svg" title="Jupyter Lab with various kernerls including Python, R and Julia" />
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_rstudio" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/rstudio.png" title="RStudio with a basic R packages pre-installed."/>
      <h2>RStudio</h2>
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_askomics" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/askomics.png" title="AskOmics is a visual SPARQL query interface supporting both intuitive data integration and querying while shielding the user from most of the technical difficulties underlying RDF and SPARQL."/>
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_bam_iobio" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/bam.iobio.png" title="Examine your sequence alignment file in seconds." />
      <h2>BAM IOBIO</h2>
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_cellxgene" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/cellxgene.svg" title="An interactive explorer for single-cell transcriptomics data" />
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_ethercalc" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/ethercalc.png" title="EtherCalc is a web spreadsheet" />
      <h2>Ethercalc</h2>
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_paraview" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/paraview.svg" title="ParaView is an open-source, multi-platform data analysis and visualization application." />
      <h2>Paraview</h2>
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_neo4j" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/neo4j.png" />
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_phinch" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/phinch.svg" title="Phinch is a data visualization framework aimed at promoting novel explorations of large biological datasets (microbiomes, metagenomes, etc.)" />
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_wallace" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/wallace.jpg" title="Wallace is a modular platform for reproducible modeling of species niches and distributions" />
      <h2>Wallace</h2>
    </a>

    <a class="mcard" href="https://live.usegalaxy.eu/?tool_id=interactive_tool_wilson" target="_top">
      <img class="card-img-top" src="/assets/media/interactive/wilson.png" title="Webbased Interactive Omics visualizatioN" />
    </a>

</div>
