# Backofen Galaxy Page


## Adding Posts

These are used for tool notices / other server notices. Run:

```
jekyll post "My new post"
```

The only required metadata are tags and title. If you put `tools` in the tags a
wrench icon will show with the post.

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
