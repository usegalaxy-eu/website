---
site: freiburg
tags:
title: Galaxy HTS data analysis workshop in Freiburg
starts: 2018-09-17
ends: 2018-09-21
organiser:
  name: Freiburg Galaxy Team
  email: contact@usegalaxy.eu
location:
  name: Institute for Biology II/III
  street: Schaenzlestr.1
  postal: 79104
  city: Freiburg im Breisgau
  region: Baden-Württemberg
  country: Germany
  geo:
    lat: 48.009973
    lon: 7.857396
supporters:
- backofenlab
- unifreiburg
- denbi
- crc992
# special hiding of footer since we want to do it manually.
hidefooter: true
---

Galaxy workshop on HTS data analysis, September 2018, registration is open! For attendance, please apply [here](https://drive.google.com/open?id=14sCTr5r1Ca6hGhJTKZVgZRzPAlTtRN1r7xAlNuUtN9k)

The Freiburg Galaxy Team and Deep-Sequencing unit at the MPI-IE Freiburg offer an introductory course to the analysis of high-throughput sequencing data using the Galaxy platform.

## Venue

{% include map.html location=page.location showmap=true zoomlevel=15 hidepopup=true %}


# Important notes

1. If you are registered but **cannot attend** our workshop, please [contact us
   by email](mailto:contact@usegalaxy.eu) immediately. We have a long waiting
   list and can give your place to others, even on short notice.
2. Please register at [https://usegalaxy.eu](https://usegalaxy.eu) if you have
   not done so already. For the MPI people: the European Galaxy server is
   different from the Galaxy server of MPI: you will need an account on our
   server, too.
3. You can bring your *own notebook* or computers will be available. Eduroam is available, ask your institute for how to login.
4. The workshop is free of charge. Unfortunately no stipends for travel or accommodation are available.

## Program:

If the times will change, it will be announced during the workshop.

Day       | Start | End   | Topics                                                                 | Material
--------- | ----- | ----  | ---------------------------------------------------------------------- | -------------
Monday    | 10:00 | 17:00 | HTS and Galaxy presentations and introduction                          | [tutorial](https://galaxyproject.github.io/training-material/topics/introduction/tutorials/galaxy-intro-peaks2genes/tutorial.html)
Tueday    | 9:00  | 17:00 | Quality control, Mapping, ChIP-seq analysis, IGV introduction          | [tutorial](https://galaxyproject.github.io/training-material/topics/chip-seq/tutorials/formation_of_super-structures_on_xi/tutorial.html), [slides](https://galaxyproject.github.io/training-material/topics/chip-seq/tutorials/formation_of_super-structures_on_xi/slides.html#1)
Wednesday | 9:00  | 17:00 | RNA-seq analysis                                                       | [tutorial](https://galaxyproject.github.io/training-material/topics/transcriptomics/tutorials/ref-based/tutorial.html), [slides](https://galaxyproject.github.io/training-material/topics/transcriptomics/slides/introduction.html#1)
Thursday  | 9:00  | 17:00 | HiC data analysis                                                      |
Friday    | 9:00  | 13:00 | Exercises & discussion                                                 |
{:.table.table-striped}

## Lunch Options

<iframe src="https://www.google.com/maps/d/embed?mid=1Brpw-UguRNDISn4_bVk8ifRkTRG8JIWR" width="100%" height="480"></iframe>

## Preparation

You must go through two Galaxy interactive tours before beginning the training.
These interactive tours guide you stepwise through the Galaxy user interface
and the history. They will help you to follow the Galaxy introduction, and
ensure everyone has a basic understanding of how Galaxy works.

- [Galaxy UI](https://usegalaxy.eu/tours/core.galaxy_ui)
- [History Introduction](https://usegalaxy.eu/tours/core.history)

If you have any questions, please do not hesitate to [contact us](mailto:contact@usegalaxy.eu)

## Travel Options

From Basel airport to Freiburg you have two options:

1. Take the train to Freiburg Hauptbahnhof (ICE or EC takes 30 min; Regio 60 min)
2. Take the airport shuttle bus to Freiburg Hauptbahnhof ([Timetable](https://www.freiburger-reisedienst.de/en/airportbus/timetable.php))

From Freiburg Hauptbahnhof to Venue you should use local public transport (VAG):

- [Tram line map](http://www.vag-freiburg.de/fahrplan-linien/netzplaene/liniennetzplan.html)
- Tram line: 2
- Tram stop: "Hauptstraße"

You are looking for building 1 (Institute of Biology II/III) on the [university map](http://www.uni-freiburg.de/universitaet/kontakt-und-wegweiser/lageplaene/aussenklinik)

## Accomodations

Some suggestions for hotels (please check portals such as HRS, booking, etc.)

Hotel                                         | Location           | Website
--------------------------------------------- | ------------------ | ----------
Hotel am Rathaus                              | Rathausgasse 4-8   | [Website](http://www.am-rathaus.de/)
Hotel Barbara                                 | Poststrasse 4      | [Website](http://www.hotel-barbara.de/)
Intercity Hotel Freiburg                      | Bismarckallee 3    | [Website](http://de.intercityhotel.com/Freiburg/InterCityHotel-Freiburg)
Stadthotel Freiburg Kolping Hotel & Gästehaus | Karlstr.7          | [Website](http://www.hotel-freiburg.de/)
Ibis Freiburg Süd (bit more far away)         | Bötzinger Str.76   | [Website](http://www.accorhotels.com/de/hotel-2656-ibis-budget-freiburg-sued/index.shtml)
StayInn Hostel und Gästehaus                  | Stühlinger Str.24a | [Website](http://www.stayinn-freiburg.de/hostel-und-gaestehaus/)
{:.table.table-striped}

<!-- TODO: map -->

> Note:
> In Freiburg you sometimes have to pay an additional accommodation tax. For business trips this tax does not
> to be paid if your employer fills out [this form](http://www.freiburg.de/servicebw/UebernachtungSt_Arbeitgeberbescheinigung.pdf). You will need to show this form to the hotel.
{:.alert.alert-warning}

## Organizers

{% assign extra_organizers =  "galaxy-freiburg|galaxy-europe|mpi" | split: "|"  %}
{% include sponsors.html supporters=extra_organizers hidetitle=true %}

## Supported By

{% include sponsors.html supporters=page.supporters hidetitle=true %}
