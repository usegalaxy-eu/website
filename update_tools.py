#!/usr/bin/env python

import requests
r = requests.get('https://usegalaxy.eu/api/tools')

tool_count = 0
out = ""
for section in r.json():
    if section['model_class'] == "ToolSection":
        anchor = section['name'].replace(' ', '').lower()
        out += f'<h3 id="{anchor}">{section["name"]}</h3>\n'
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
                    print(elem)
            tool_count += 1
            out += f'<a href="{link}" title="{elem_desc}"><button type="button" class="btn btn-outline-primary btn-rounded waves-effect btn-xs" style="margin: 2px">{elem_name}</button></a>\n'
    else:
        anchor = section['text'].replace(' ', '').lower()
        out += '<hr/>'
        out += f'<h2 id="{anchor}">{section["text"]}</h2>\n'

blurb = f"""---
layout: default
---

# European Galaxy tools ({tool_count} and counting)
<hr/>
"""

with open('tools.md', 'w+') as o:
    o.write(blurb)
    o.write(out)




