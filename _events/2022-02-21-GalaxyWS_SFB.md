---
site: freiburg
tags:
- training
title: Galaxy HTS data analysis workshop for CRC 1425, CRC 992 and MeInBio members
starts: 2022-02-21
ends: 2022-02-25
organiser:
  name: Freiburg Galaxy Team
  email: galaxy@informatik.uni-freiburg.de
location: online
supporters:
- crc1425
- crc992
- meinbio
- denbi
# special hiding of footer since we want to do it manually.
hidefooter: true
---

We are offering a Galaxy workshop on high-throughput data analysis. This is an online course and is limited to the members CRC 1425, CRC 992 and MeInBio.

## Venue

Online


# Important notes

1. Please register to our [European Galaxy server](https://usegalaxy.eu) to perform the analysis. Participants from the     
   MPI Freiburg, please note that the European Galaxy server is different from the MPI Galaxy server. You will need to 
   have an account on [https://usegalaxy.eu](https://usegalaxy.eu]) as well.
2. For the workshop, all you need is a computer with a latest web browser.
3. The workshop is free of charge.

## Program:

Every day the workshop will run from 10:00-15:00 (give or take, depending on questions at the end). If the times will change, it will be announced during the workshop.

Schedule:

Day     | Topics
------- | --------
Mon     | HTS and Galaxy presentations and introduction
Tue     | ATAC-Seq data analysis
Wed     | RNA-Seq data analysis part I
Thu     | RNA-Seq data analysis part II
Fri     | Advanced Galaxy features, discussions, bring your own data.
{:.table.table-striped}

## Links

* [Galaxy tips and tricks](https://github.com/bgruening/galaxy-tricks)
* [Galaxy training network](http://training.galaxyproject.org)


## Preparation

Galaxy interactive tours guide you stepwise through the Galaxy user interface
and the history. They will help you to follow the Galaxy introduction, and
ensure everyone has a basic understanding of how Galaxy works. It is recommended
to go through the following two Galaxy interactive tours before beginning the
 training, but it is not mandatory.

- [Galaxy UI](https://usegalaxy.eu/tours/core.galaxy_ui)
- [History Introduction](https://usegalaxy.eu/tours/core.history)

If you have any questions, please do not hesitate to [contact us](mailto:galaxy@informatik.uni-freiburg.de)

## Organizers

{% assign extra_organizers =  "galaxy-freiburg|galaxy-europe" | split: "|"  %}
{% include sponsors.html supporters=extra_organizers hidetitle=true %}

## Supported By

{% include sponsors.html supporters=page.supporters hidetitle=true %}
