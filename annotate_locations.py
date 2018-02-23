# curl 'http://nominatim.openstreetmap.org/search?format=json&q=Georges-Kohler-Allee%20106%20Freiburg%20im%20Breisgau' | jq '.[0]'
import re
import frontmatter
import glob
import requests
import urllib.parse
import time

SERVER = 'http://nominatim.openstreetmap.org/search'

for file in glob.glob('_events/*.md'):
    with open(file, 'r') as f:
        post = frontmatter.load(f)

    loc = post.metadata['location']
    if loc == 'online':
        continue

    if 'geo' in post.metadata['location']:
        continue

    query = ' '.join(map(str, [
        loc.get('street', ''),
        loc.get('city', ''),
        loc.get('postal', ''),
        loc.get('region', ''),
        loc.get('country', ''),
    ]))
    query = re.sub(r'\s+', ' ', query).strip()
    r = requests.get(SERVER, {'format': 'json','q': query})
    print(r.url)
    d = r.json()
    print(query, d)
    if len(d) == 0:
        time.sleep(1)
        continue

    post.metadata['location']['geo'] = {
        'lat': d[0]['lat'],
        'lon': d[0]['lon']
    }
    with open(file, 'w') as f:
        w = frontmatter.dumps(post)
        if isinstance(w, str):
            f.write(w)
        else:
            f.write(w.decode('utf-8'))

    time.sleep(1)
