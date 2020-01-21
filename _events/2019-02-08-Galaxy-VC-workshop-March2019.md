---
site: freiburg
tags:
- training
title: Miracum whole-exome sequencing pipeline workshop in Freiburg
starts: 2019-03-13
ends: 2019-03-14
organiser:
  name: Freiburg Galaxy Team & AG Boerries
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
- miracum
- denbi
# special hiding of footer since we want to do it manually.
hidefooter: true
---

Workshop for future users/maintainers of the [Miracum](https://www.miracum.org/) WES anaylsis workflow with the goals
of presenting the current version of the Galaxy workflow, demonstrating its usage, and of gathering feedback from
participants.

## Venue

{% include map.html location=page.location showmap=true zoomlevel=15 hidepopup=true %}


# Important notes

1. To be able to perform the hands-on analysis part of the workshop, please register for a user account on the [European Galaxy server](https://usegalaxy.eu) before the workshop.
2. Desktop computers are available for everyone, but you can also bring your own notebook if you prefer.
Eduroam is available, ask your institute for how to login.
3. The workshop is free of charge. Unfortunately no stipends for travel or accommodation are available.

## Program:

Day     | Topics
------- | --------
**Wed** | **14:00 - 18:00**
  ->    | Introduction to Galaxy and its user interface
  ->    | Outline of the Miracum WES analysis workflow
  ->    | Hands-on analysis of representative patient data  
**Thu** | **9:00 - 12:30**
  ->    | Generation of custom variant queries and reports
  ->    | Discussion, feedback
{:.table.table-striped}

## Lunch Options

<iframe src="https://www.google.com/maps/d/embed?mid=1Brpw-UguRNDISn4_bVk8ifRkTRG8JIWR" width="100%" height="480"></iframe>

## Preparation

No prior knowledge of the Galaxy platform is required for this workshop (although it may be helpful if you have taken
a look at a public Galaxy server before), but you will need an active user account on the
[European Galaxy server](https://usegalaxy.eu).

If you have any questions, please do not hesitate to [contact us](mailto:contact@usegalaxy.eu).

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

{% assign extra_organizers =  "galaxy-freiburg|galaxy-europe" | split: "|"  %}
{% include sponsors.html supporters=extra_organizers hidetitle=true %}

## Supported By

{% include sponsors.html supporters=page.supporters hidetitle=true %}
