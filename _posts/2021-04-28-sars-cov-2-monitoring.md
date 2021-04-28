---
site: freiburg
tags: [data, COVID-19]
title: SARS-CoV-2 monitoring of raw open data for disease surveillance
supporters:
- denbi
- elixir
---

Recently, we started a large-scale project on the European Galaxy server for automatically collecting,
processing and publishing COG-UK and other SARS-CoV-2 sequencing data. We aim to make all these steps fully open and accessible,
so you too can contribute data, wait for it to be processed, and visualize the results.


## Automated variant calling workflows

Every three hours, newly published COG-UK samples are processed to produce:

* a public Galaxy history, which provides full data provenance
* variants in VCF format
* alignment files in BAM format
* consensus sequences in FASTA format

These are subsequently pushed back to a public FTP server hosted by [CRG/BSC](ftp://xfer13.crg.eu). CRG then takes this data and
integrates it into the [Viral Beacon](https://covid19beacon.crg.eu/).

The scripts for the workflow automation are [publicly available](https://github.com/usegalaxy-eu/ena-cog-uk-wfs) together with [documentation](https://github.com/usegalaxy-eu/ena-cog-uk-wfs/blob/main/docs/manual.md). The analysis is based on [public, validated workflows](https://www.biorxiv.org/content/10.1101/2021.03.25.437046v1) that are available via [workflowhub.eu](https://workflowhub.eu/).

Special care was taken to run this analysis on scale without disrupting normal Galaxy usage. In other words, we can monitor samples, while at the same time still run trainings and serve hundreds of other Galaxy users simultaneously.

If you want to process samples from your country, please get in touch with us and we will help you get things running!


## Request processing of your own samples

In addition, we wanted to make this resource useful for everyone, including non-Galaxy users. Therefore, we have opened up contribution via a simple GitHub repository: [https://github.com/usegalaxy-eu/sars-cov-2-processing-requests](https://github.com/usegalaxy-eu/sars-cov-2-processing-requests). The idea is very simple; you just submit a file with URLs (ENA URLs for example) as a single file. This file makes up one batch of processing requests.

One of the European Galaxy Team will check your contribution and approve it, after which Galaxy will pick those files up and process them with our standard pipelines.

Just as for the automated COG-UK data, all files are pushed back to the CRG FTP server. So in the end, after a few hours, (depending on the amount of URLs and the load on our servers) the user can either
get the results from:

* Galaxy via shared/public histories
* via the CRG FTP server

and visualize them on the [Viral Beacon](https://covid19beacon.crg.eu) (probably a few days later).

We think this makes it even easier to analyze virus sequences for people that don't want to run their own workflows,
but are still interested in specific samples.


## Interactive ObservableHQ dashboard

Furthermore, all data that we process is summarized in an [ObservableHQ dashboard](https://observablehq.com/@spond/sars-cov-2-cog-uk). Anyone can access, play around with the data in JavaScript and JSON and push any new plots they create back to us.

Since it's a notebook, you can also filter the data with real-time queries. At the lower end, under "variants of concern", you can for example select your favorite lineage and see how often
its signature mutations are identified. As in most countries, the South African and the Brazilian variants aren't really taking off in the UK. The Bloom DMS Escape variants also aren't seen much. These are variants that have been demonstrated in lab experiments to cause immune escape. So good news for the UK - what about the other European countries? Well, for this we need your Galaxy instances to analyze the other data - and maybe more importantly, 
we need more [OPEN DATA](https://www.covid19dataportal.org/support-data-sharing-covid19)!


