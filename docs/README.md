# Backofen Galaxy Page

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
jekyll post "My new post"
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

## Building

First, run `bundler` to pull down dependencies. Then to serve:

```console
jekyll serve --watch
```

Other commands are available under `jekyll --help`

## License

The site is based off of `minima` which is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
