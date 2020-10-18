#!/usr/bin/env python

import requests
r = requests.get('https://usegalaxy.eu/api/tools')

tool_count = 0
out = ""
for section in r.json():
    if section['model_class'] == "ToolSection":
        out += f'<h3>%s</h3>\n' % section['name']
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
        out += '<hr/>'
        out += f'<h2>%s</h2>\n' % section['text']

blurb = f"""---
layout: default
---

# European Galaxy tools ({tool_count} and counting)
<hr/>
"""

with open('tools.md', 'w+') as o:
    o.write(blurb)
    o.write(out)




