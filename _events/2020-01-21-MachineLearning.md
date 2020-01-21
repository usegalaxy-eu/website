---
site: freiburg
tags:
- training
title: Introduction to machine learning using Galaxy
starts: 2020-03-30
ends: 2020-04-01
organiser:
  name: Freiburg Galaxy Team
  email: contact@usegalaxy.eu
location:
  name: PC Pool 3
  street: Werthmannstraße 4 
  postal: 79098
  city: Freiburg im Breisgau
  region: Baden-Württemberg
  country: Germany
  geo:
    lat: 47.993469
    lon: 7.845275
supporters:
- unifreiburg
- denbi
- elixir
# special hiding of footer since we want to do it manually.
hidefooter: true
---

We are offering a workshop on introduction to machine learning using Galaxy. 35 participants will be selected from all applicants. To apply for attendance, please sign in [here](https://docs.google.com/forms/d/e/1FAIpQLSdu1SJbSOCGy20iqShiyK5DUIrZU6hnPGpYv2DgHnUxf13HSQ/viewform?usp=pp_url).

## Venue

{% include map.html location=page.location showmap=true zoomlevel=15 hidepopup=true %}


# Important notes

1. If you are registered but **cannot attend** our workshop, please [contact us
   by email](mailto:contact@usegalaxy.eu) immediately. We have a long waiting
   list and can give your place to others, even on short notice.
2. Please register to our [European Galaxy server](https://usegalaxy.eu) to perform the analysis.
3. You can bring your *own notebook* or desktop computers will be available. Eduroam is available, ask your institute 
   for how to login.
4. The workshop is free of charge. Unfortunately, no stipends for travel or accommodation are available.

## Program:

Usually the workshop will run from 9:00-17:00 (give or take, depending on questions at the end). If the times will change, it will be announced during the workshop.

Preliminary schedule. Topics may be adjusted according to the participants demand

Day     | Topics
------- | --------
Mon     | **Starts at 10:00 am**, Introduction to Galaxy, machine learning basics and classification techniques.
Tue     | Regression models, unsupervised learning (clustering and dimension reduction) and feature selection methods.
Wed     | Hyperparameter optimization techniques, questions and discussions. **Ends at 2:00 pm**
{:.table.table-striped}

## Links

* [Galaxy tipps and tricks](https://github.com/bgruening/galaxy-tricks)
* [Galaxy training network](http://training.galaxyproject.org)

## Lunch Options

<iframe src="https://www.google.com/maps/d/embed?mid=13xIYbHTYlxxu-oopBTsSJHqK42M8lO6C" width="100%" height="480"></iframe>

## Travel Options

From Basel airport to Freiburg you have two options:

1. Take the train to Freiburg Hauptbahnhof (ICE or EC takes 30 min; Regio 60 min)
2. Take the airport shuttle bus to Freiburg Hauptbahnhof ([Timetable](https://www.freiburger-reisedienst.de/en/airportbus/timetable.php))

From Freiburg Hauptbahnhof to Venue you can walk or use local public transport (VAG):

- [Tram line map](http://www.vag-freiburg.de/fahrplan-linien/netzplaene/liniennetzplan.html)
- Tram line: 5
- Tram stop: "Erbprinzenstraße"

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
