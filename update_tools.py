#!/usr/bin/env python

import requests
import urllib.parse
r = requests.get('https://usegalaxy.eu/api/tools')

blurb = """---
layout: default
---

# Galaxy EU tools
<hr/>
"""

with open('tools.md', 'w+') as out:
    out.write(blurb)

    for section in r.json():
        if section['model_class'] == "ToolSection":
            out.write(f'<h3>%s</h3>\n' % section['name'])
            for elem in section['elems']:
                if elem['model_class'] != "ToolSectionLabel":
                    try:
                        elem_id = elem['id']
                        elem_name = elem['name']
                        elem_desc = elem['description'].replace('"', "'")
                        if 'toolshed' in elem_id:
                            tool_id = elem_id.split('/')[-2]
                        else:
                            tool_id = elem_id
                        link = f'https://usegalaxy.eu/root?tool_id={tool_id}'
                    except:
                        raise
                        print(elem)
                out.write(f'<a href="{link}" title="{elem_desc}"><button type="button" class="btn btn-outline-primary btn-rounded waves-effect btn-xs" style="margin: 2px">{elem_name}</button></a>\n')
        else:
            out.write('<hr/>')
            out.write(f'<h2>%s</h2>\n' % section['text'])







