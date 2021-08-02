#!/usr/bin/env python
import feedparser

feedparser.sanitizer._HTMLSanitizer.acceptable_elements.remove('a')
feedparser.sanitizer._HTMLSanitizer.acceptable_elements.remove('img')

feeds = feedparser.parse('https://training.galaxyproject.org/training-material/feed.xml')

for entry in feeds.entries:
    feed_title = f'[GTN news] {entry["title"]}'
    feed_link = entry['link']
    feed_blurb = entry['summary']
    TEMPLATE = f"""---
site: [pasteur, freiburg, erasmusmc, elixir-it, belgium, genouest]
tags: [training, gtn-news]
title: "{feed_title}"
supporters:
- denbi
- elixir
- gallantries
external: '{feed_link}'
---

{feed_blurb}

"""
    feed_published = entry['published'].split('T')[0]
    feed_name = feed_link.split('/')[-1].replace('.html', '')
    with open(f'_posts/{feed_published}-{feed_name}.md', 'w+') as handle:
        handle.write(TEMPLATE)
