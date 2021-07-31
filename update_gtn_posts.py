#!/usr/bin/env python
import feedparser

feeds = feedparser.parse('https://training.galaxyproject.org/training-material/feed.xml')

for entry in feeds.entries:
    feed_title = entry['title']
    feed_link = entry['link']
    feed_blurb = entry['content'][0]['value']
    TEMPLATE = f"""---
site: [pasteur, freiburg, erasmusmc, elixir-it, belgium, genouest]
tags: [training, gtn-news]
title: "{feed_title}"
supporters:
    -denbi
    -elixir
external: '{feed_link}'
---

{feed_blurb}

"""

    feed_published = entry['published'].split('T')[0]
    feed_name = feed_link.split('/')[-1].replace('.html', '')
    with open(f'_posts/{feed_published}-{feed_name}.md', 'w+') as handle:
        handle.write(TEMPLATE)