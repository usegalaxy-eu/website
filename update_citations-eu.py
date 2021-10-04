#!/usr/bin/env python

from pyzotero import zotero
import bibtexparser
zot = zotero.Zotero('1732893', 'group')
zot.add_parameters(style='mla', format='bibtex', linkwrap="1", tag=">UseGalaxy.eu || >RNA Workbench || RNA workbench || >ASaiM || >Live EU || >Proteomics EU || >Metagenomics EU || >ML Workbench || >ChemicalToolbox")
items = zot.everything(zot.top())

with open('_bibliography/citations-eu.bib', 'w') as bibtex_file:
    bibtexparser.dump(items, bibtex_file)

