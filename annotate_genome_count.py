#!/usr/bin/env python

import pandas as pd
import re
import fileinput

sheet_id = "1Kya38LUDom4u7osTTY3uYyNor7AMpyLYxz5MaulciZc"
sheet_name = "Sheet1"

url = f"https://docs.google.com/spreadsheets/d/{sheet_id}/gviz/tq?tqx=out:csv&sheet={sheet_name}"

df = pd.read_csv(url)
genome_number = (len(df['ID']))

myfile = fileinput.FileInput("index-assembly.md", inplace=True)

for line in myfile:
    line = re.sub(r"\*\*\<b\>\d*\<\/b>\*\*",
                  f"**<b>{genome_number}</b>**",
                  line.rstrip())
    print(line)
