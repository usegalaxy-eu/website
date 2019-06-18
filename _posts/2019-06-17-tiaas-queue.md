---
site: freiburg
tags: [devops]
title: TIaaS Queue Status
location: Freiburg, Germany
---

A common request during trainings was "how are the students doing, are they finished with the current step?" This is a common question, especially given some of the sleepy grad students trainees at 9am. For our [TIaaS](https://galaxyproject.eu/tiaas) users, we have added a brief overview of the training queue, showing them at a glance if everyone is finished with the current step.

It shows:

- Overview of queue (how many are in state new/queued/ok/error)
- Overview split by tools (how many people are done running Fastqc?)
- A full listing of the queue

![Training queue visualisation](/assets/media/tiaas-queue.png)

**Update**: now features a heatmap

![Training queue state heatmap](/assets/media/tiaas-queue2.png)
