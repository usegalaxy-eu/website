---
site: freiburg
tags: [devops, tools]
title: FASTQC jobs and very long reads
location: Galaxy Europe
---

Over the last weeks we saw many [FASTQC]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/devteam/fastqc/fastqc/0.72) jobs running for days or even longer, which is not normal.
We investigated this and saw that all of those jobs are processing files with unusal long reads.

We are excited to see that our instance is used more and more for processing data of the
fourth-generation of DNA sequencing technology!

However, FASTQC seems to have a problem with that so we updated the tool and tried to understand what is going on.
We finally found that FASTQC has a hard-coded parameter (-Xmx250m) to restrict the Java virtual machine to a certain amount of memory.
Increasing this value made all our tests way more faster with very long reads and we hope to speed up your computation from days to minutes.

We will kill long running jobs that do not finish in a few days, all what you need to do is restarting the job and it should finish way faster.
Please get in [contact](mailto:contact@usegalaxy.eu) with us, if you still see such problems with FASTQC.

Please also have a look at [fastp]({{ page.website }}/?tool_id=toolshed.g2.bx.psu.edu/repos/iuc/fastp/fastp/) as an alternative tool, that also
provides some quality metrices.

Finally, if you have data with very long reads have a look in your tool panel - there should be a Nanopore section with a lot of useful tools for ONT data.
