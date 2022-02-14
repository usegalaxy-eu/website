---
site: freiburg
tags:
- training
title: Galaxy HTS data analysis workshop for CRC 1425, CRC 992 and MeInBio members
starts: 2022-02-21
ends: 2022-02-25
organiser:
  name: Freiburg Galaxy Team
  email: contact@usegalaxy.eu
location: online
supporters:
- crc1425
- crc992
- meinbio
- denbi
# special hiding of footer since we want to do it manually.
hidefooter: true
---

We are offering a Galaxy workshop on high-throughput data analysis. This is an 
online course and is limited to the members CRC 1425, CRC 992 and MeInBio.

## Venue

Online

## Program

Every day, the workshop will run from 10:00-15:00 CET (give or take, depending 
on questions at the end). If the times will change, it will be announced during the workshop.

Schedule:

Day     | Topics
------- | --------
Mon     | HTS and Galaxy presentations and introduction
Tue     | ATAC-Seq data analysis
Wed     | RNA-Seq data analysis part I
Thu     | RNA-Seq data analysis part II
Fri     | Advanced Galaxy features, discussions, bring your own data.
{:.table.table-striped}

### Agenda
Each day is divided in to 3 sessions:
* **Training session** is a zoom meeting where tutors will present the basic idea of the topic and demonstrate the data analysis on Galaxy and explain each analysis step. It is a popcorn session. Participants should relax and watch, ask questions but don't touch the keyboard.  
* **Hands-on session** is the work-session. Participants will perform the analysis that they have learned during the training session. The training material and supporting hands-on videos are provided. All the questions during the hands-on session will be answered by the tutors in a slack channel. All the workshop information, training material and tutorial videos will stay online even after the workshop.
* **Q&A session**: Day ends with an extended live discussion on zoom where we all can discuss any remaining questions about the topic. This session will start at 16:30.

## Links

* Slack channel for discussions during the hands-on: [link](https://app.slack.com/client/T01EL3YJPC2/C031N6QA6P3)
* [Galaxy tips and tricks](https://github.com/bgruening/galaxy-tricks)
* [Galaxy training network](http://training.galaxyproject.org)


## Preparation
Some important steps to consider before joining the workshop:

1. Please create an account in the [European Galaxy server](https://usegalaxy.eu) 
to perform the analysis. Participants from the MPI Freiburg, please note that 
the European Galaxy server is different from the MPI Galaxy server. You will need 
to have an account on [https://usegalaxy.eu](https://usegalaxy.eu]) as well.
2. We use Slack for the discussions during the hands-on session. Please follow these two steps in order to join us in Slack:
    - First, please register at the Galaxy training network Slack space: [https://join.slack.com/t/gtnsmrgsbord/shared_invite/zt-x7vinbs1-BA~Kht6N86JBhDq0uTIVdQ](https://join.slack.com/t/gtnsmrgsbord/shared_invite/zt-x7vinbs1-BA~Kht6N86JBhDq0uTIVdQ)
    - Once you are in, join our workshop channel named freiburg-galaxy-workshop-2022 by following this link: [https://app.slack.com/client/T01EL3YJPC2/C031N6QA6P3](https://app.slack.com/client/T01EL3YJPC2/C031N6QA6P3)
    - Finally, feel free to say hello to other participants.
3. For the workshop, all you need is a computer with a latest web browser.
4. Galaxy interactive tours guide you stepwise through the Galaxy user interface
and the history. They will help you to follow the Galaxy introduction, and
ensure everyone has a basic understanding of how Galaxy works. It is recommended
to go through the following two Galaxy interactive tours before beginning the
 training, but it is not mandatory.
    - [Galaxy UI](https://usegalaxy.eu/tours/core.galaxy_ui)
    - [History Introduction](https://usegalaxy.eu/tours/core.history)

If you have any questions, please do not hesitate to [contact us](mailto:contact@usegalaxy.eu).

## Organizers

{% assign extra_organizers =  "galaxy-freiburg|galaxy-europe" | split: "|"  %}
{% include sponsors.html supporters=extra_organizers hidetitle=true %}

## Supported By

{% include sponsors.html supporters=page.supporters hidetitle=true %}
