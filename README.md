# UseGalaxy.eu Page

## Fancy Redirects

Much content was moved around (in the output site) recently. That is because we're doing a strange and cool hybrid-site approach.

Page       | Use
---------- | ---
/          | main galaxy instance
/about/    | About our galaxy instance
/freiburg/ | About the freiburg team
/news/     | news posts
/events/   | events posts

We'll be doing some fancy proxying to accomplish this. The above mentioned
pages (other than /) will have the full "chrome", i.e. top bar with
about/people/pubs links.

Within the main panel we'll be showing an iframe to usegalaxy.github.io/gxhome/
which will NOT be accessible via usegalaxy.eu/gxhome/.

This is a terrible explanation but basically:

- the site should be fully functional at usegalaxy-eu.github.io. This site can be referenced in communication materials.
- certain important subpages (/freiburg/, /news/, /events/) will be available from usegalaxy.eu/.../ in order to tie those to our galaxy instance more closely.


## Server Maintenance

If you need to register a notice event, edit `_data/notices.yml`. When
the event is over, you should comment out that file.


## Duplication

You will notice there is some duplication in the templates:

Parent                            | Duplicate
---------------                   | --------------
`_layout/event.html`              | `_layout/event-galaxy.html`
`_layout/event_list.html`         | `_layout/event_list-galaxy.html`
`_layout/news.html`               | `_layout/news-galaxy.html`
`_layout/news_list.html`          | `_layout/news_list-galaxy.html`
`_layout/news.md`                 | `_layout/gxnews.md`
`_layout/events.md`               | `_layout/gxevents.md`
`_layout/default.md`              | `_layout/default-galaxy.md`
`_includes/home_news_events.html` | `_includes/home_news_events-galaxy.html`

This duplication is intentional, it is part of the `collections` configuration
and allows us to produce "two" sites from one set of source documents. This is
done intentionally in order to allow authors to add posts once, and then on the
code side we generate both a "normal" site with the full header, and a "galaxy"
version without the header since a duplicate header looks quite strange in
Galaxy.

If you need to edit templates, I would recommend editing the parent / normal
template and then `vimdiff`ing (or other tool of your choice) to compare that
with its `-galaxy.html` sibling. Most of the templates will be identical except for
the template they are inheriting from. The only major differences is that the
normal templates read `for post in site.posts` (or `site.events`) while the
galaxy templates read `for post in site.posts_plain` (`or site.events_plain`)


## Adding Posts

These are used for tool notices / other server notices. Run:

```
bundle exec jekyll post "My new post"
```

The only required metadata are tags and title, you should **remove layout** as that is inherited / specified automatically. If you put `tools` in the tags a wrench icon will show with the post.


## Adding Events

You will need to manually create an event in the folder `_events`. The metadata for events is a bit more complex, it looks like:

```yaml
---
tags:
title: Software Carpentry workshop
starts: 2017-03-09
ends: 2017-03-10
organiser:
  name: Freiburg Galaxy Team
  email: galaxy@informatik.uni-freiburg.de
location: Georges-Köhler-Allee, Freiburg im Breisgau, Germany
```

Here we specify an `starts` and `ends` to define the dates of the event.
Providing an organiser name and email is recommended to allow people to contact
you easily regarding the event.

Supplying a location is used in the user's calendar (if it supports it). E.g. when
the user adds the event to their google calendar, they will see a map of the location
and can easily get directions to it.

## Labels for Posts and Events

- article
- Bioconda
- citations
- conda-forge
- conference
- COVID-19
- data
- devops
- galaxy
- GCC
- grants
- hackathon
- hardware
- jobs
- MMOS
- newsletter
- paper
- papercuts
- PGP
- poster
- release
- report
- talk
- TIaaS
- tools
- training
- streetscience
- society
- s4f
- video

## Adding new member sites

If you contribute substantially to this service, we invite you to become a "member site"!
A member site is one of our ways to say "thank you" and acknowledge your contribution. You can
add events to get more exposure, you can add your funding agencies, own blog posts and present your
team and publications. To add your side please see this
[example pull- request](https://github.com/usegalaxy-eu/website/pull/405).


## Building

This website is jekyll based and can be build as every other jekyll page.

If you have conda around and no jekyll setup, we do provide a Makefile that sets up and
conda environment, with all what you need.

```console
make install
make run
```

## Deploying

The scripts `.build.sh` and `.deploy.sh` are what are run by our Jenkins bot.
