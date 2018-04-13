---
tags: [tools]
title: "Genomic Data Commons (GDC) integration"
---

[Fabio Cumbo](https://github.com/fabio-cumbo) has integrated native GDC support into Galaxy via
the [GDCWebApp](http://bioinf.iasi.cnr.it/gdcwebapp/).
This is a web service for querying, filtering, extracting, and converting all public data from the GDC.

The service has a minimalistic interface that allows to select multiple data sets at once defined by
three attributes such as a program, a tumor name, and a data type. It can filter out a priori only the experiments
conducted on some specific patients, customize the content of every single dataset,
and convert them in BED, GTF, CSV, and JSON format.

<image>

<link to tool>
