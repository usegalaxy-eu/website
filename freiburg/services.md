---
layout: default
---

# Our Services

---
The Freiburg Galaxy Team is offering several services to enable **reproducible** and **accessible** research for everyone:

- <i class="fa fa-server"></i> [Galaxy server](#galaxy-server)
- <i class="fa fa-graduation-cap"></i> [Training](#training)
- <i class="fa fa-university"></i> [Training Infrastructure-as-a-Service (TIaaS)](#training-infrastructure-as-a-service)
- <i class="fa fa-cube"></i> [Virtualization for Sensitive Data](#virtualization-for-sensitive-data)
- <i class="fa fa-table"></i> [Data analysis](#data-analysis)
- <i class="fa fa-cogs"></i> [Tool integration](#tool-integration)
- <i class="fa fa-cloud"></i> [Scientific computing cloud](#scientific-computing-cloud)

---
<a name="galaxy-server"></a>
# <i class="fa fa-server"></i> The European Galaxy Server

Our flagship service is the **European Galaxy server** [UseGalaxy.eu](https://usegalaxy.eu) which is the **biggest Galaxy instance in Europe**, and one of the biggest worldwide.

With **free** registration to the [UseGalaxy.eu](https://usegalaxy.eu) server we provide you an **easy access** to:

- Free compute and storage resources (250 GB per user)
- Databases (e.g. EMBL-EBI ENA, NCBI SRA, Ensembl, UCSC, UniProt, and many organism-specific databases)
- More than 2000 different, well-documented and constantly maintained bioinformatics tools
- Puplic HTS data analyis workflows
- Reference genomes
- Visualizations

When this effort is combined with our community-maintained workflows and our in-depth [Galaxy training material](https://training.galaxyproject.org), it makes up for a truly productive work experience. We believe in enabling everyone to perform reproducible science.

Simply upload your data from your computer or via FTP and get started with your data analysis!

### Galaxy Subcommunities

We want to encourage scientist to join forces and foster subcommunities by giving them a common place, a Galaxy subdomain page. Every sububdomains comes with own welcome page, specific tool box, example data, workflow, and training material. More information can be found on the [https://galaxyproject.eu](https://galaxyproject.eu/) webpage.

---
<a name="training"></a>
# <i class="fa fa-graduation-cap"></i> Training

We are passionate about training! Our team wants to support researchers to take part in their own data analyses by educating them in *e.g.* big data analysis, programming, data management, and Galaxy server administration. We believe that **sharing of knowledge** and the **open science** movement are the key points in future.

<div class="multiple-img" style="text-align: right;">
    <img src="/assets/media/training_1.jpg" width="200px" alt="Workshop picture" />
    <img src="/assets/media/training_2.jpg" width="200px" alt="Workshop picture" />
    <img src="/assets/media/training_3.jpg" width="200px" alt="Workshop picture" />
</div>

### Galaxy Training Workshops

Locally in Freiburg, we offer twice per year a free full-week hands-on high-throughput sequencing data analysis workshop. A typical workshop schedule looks as follows: 

- Monday:     Introduction to Galaxy and HTS
- Tuesday:    Quality control, IGV, ChIP-Seq, 
- Wednesday:  RNA-Seq 
- Thursday:   HiC data analysis, Methyl-C data analysis
- Friday:     Bring your own data, exercises

We have more training material for various topics to teach, e.g. Transcriptomics, Metabolomics, Metagenomics, Proteomics, Genome Annotation, Variant Calling, ... . Topics usually are selected from desired topics of the applicants.

All workshops are announced on our [events page](https://galaxyproject.eu/freiburg/events). Registrations are possible through our website.

We and other members of the Galaxy training network (GTN) are giving training courses around the world for data analysis and for developers and administrators. Check the website of the main [Galaxy project](https://galaxyproject.org/events) as well as the [de.NBI](https://www.denbi.de) website for [de.NBI courses](https://www.denbi.de/training)

### Galaxy Training Material

The Freiburg Galaxy Team is a very active contributor to the community-driven development of GTN Galaxy training material. All of this material is **online, and freely accessible for everyone** at [https://training.galaxyproject.org](https://training.galaxyproject.org). 

We provide more than 150 tutorials designed for both **self-training** and **workshops** for Galaxy users, developer, and administrators. Each tutorial comes with:

- Introduction of the topic
- Step-by-step instruction of the data analysis guiding through the analysis workflow
- Real world example data sets
- Interactive tour

We also provide the technical support with tools, data, virtualized instances, ... So you can use this material on our Galaxy instance or you can spin up your own Galaxy server!

If you want to offer a training course to other researchers, we do maintain a set of material for “train the trainers” and we are happy to share our knowledge and experience in this area with you. We are also providing training material for Galaxy developers and admins as well as the possibility to use iPython notebooks and jupyter directly in Galaxy.

### Collaboration/Contribution Fests

Contribution fests (or hackathons) are short events (usually few days) where people combine their force and **develop new, or improving existing techniques, tools, training materials, etc.**

We organize numerous hackathons per year on site or online, in close cooperation with [de.NBI](https://www.denbi.de), [ELIXIR](https://www.elixir-europe.org), and the Galaxy community.

---
<a name="training-infrastructure-as-a-service"></a>
# <i class="fa fa-university"></i> Training Infrastructure-as-a-Service (TIaaS)

We are very excited to offer a special service for Galaxy trainers: [Training infrastructure as a Service](https://galaxyproject.eu/tiaas)!

If you have a training event planned, get in touch with us and we will allocate you **completely dedicated compute resources** for the duration of your training. Your users’ jobs on usegalaxy.eu will be directed to these resources and are free from the regular job queue. No setup, no queueing times, no hassle. Apply [here](https://docs.google.com/forms/d/e/1FAIpQLSdoPRDhpYwNFuZSlGRNQj3dDWwfsdemP5yntAdcqhN3YHbqLA/viewform).

Just drop us a mail and concentrate on the important things during your training.

---
<a name="virtualization-for-sensitive-data"></a>
# <i class="fa fa-cube"></i> Virtualization for Sensitive Data

For sensitive (biomedical) data and users with internet limitations, we offer **virtualizations** for Galaxy and many other tools. Our aim is to enable all researchers easy access to tools, wherever they need them.

### Virtualized deployments

Spending valuable time in compilation hell or frustrating conversations with cluster admins because tools are not available should not be a problem nowadays.

Therefore, we are leading the Bioconda ([https://bioconda.github.io](https://bioconda.github.io)) and BioContainers ([https://biocontainers.pro](https://biocontainers.pro)) projects, which together form the best stack for reproducible science ever.

### Virtualization of Galaxy and customized flavors

With the [Galaxy Docker project](https://github.com/bgruening/docker-galaxy-stable), we offer a "Galaxy in a box". It is a production-ready, scalable Galaxy instance, complete with all goodies included that makes Galaxy so popular.

To meet custom need, we also maintain and offer these Galaxy instance for download in a variety of different "flavors". For example:
- the [RNA-workbench flavour](https://github.com/bgruening/galaxy-rna-workbench) for all RNA related research
- [ASaiM](https://asaim.readthedocs.io) flavor for metagenomics
- A [flavor dedicated to epigenetic research](https://github.com/bgruening/docker-galaxy-epigenetics).

---
<a name="data-analysis"></a>
# <i class="fa fa-table"></i> Data analysis

You don't have time to analyse your data or have a very specialized question? Our team consists of experts in different fields (RNA-Seq, ChIP-Seq, metagenomics, etc).

We are eager to assist you and solve your scientific question with you! We have a long track record of solving advance NGS analysis tasks in tight collaborations with world-wide community of experimental groups.

---
<a name="tool-integration"></a>
# <i class="fa fa-cogs"></i> Tool integration

Do you have a scientific question and can't find the appropriate tool for it? We will put ideas into code, and then the code into Galaxy, so everyone can use it!

!["Tools available on usegalaxy.eu"](/assets/media/tools.png)

We are also maintaining, adapting and optimizing existing Galaxy tools in collaboration with Galaxy community, for example as part of the [Intergalactic Utilities Commission](https://github.com/galaxyproject/tools-iuc).

---
<a name="scientific-computing-cloud"></a>
# <i class="fa fa-cloud"></i> Scientific computing cloud

As part of the German Network for Bioinformatics Infrastructure [de.NBI](https://www.denbi.de), we maintain a scientific cloud for our users.

If you have special needs or require a virtualized computing environment for your research, get in touch with us and we will work with you to develop a personalised solution.



