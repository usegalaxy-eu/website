---
layout: home
title: Training Infrastructure as a Service
---

<div class="alert alert-success" style="margin-top: 0.5em">
<h4>TIaaS Presentation at GCC</h4>
We presented <a href="https://gcc2019.sched.com/event/Rsld/training-infrastructure-as-a-service" target="_blank">TIaaS at GCC2019</a>, you can see our slides on the event page. We've also produced some <a href="https://training.galaxyproject.org/training-material/topics/instructors/tutorials/setup-tiaas-for-training/tutorial.html" target="_blank">training material</a> on the process of evaluating if the service is right for you, and the user experience for your trainees.
</div>



# Training Infrastructure as a Service

<br>
<img src="/assets/media/tiaas-logo.png" alt="tiaas logo depicting people in queues" width="300em" style="margin: 1em">
<br>

The [European Galaxy Server](https://usegalaxy.eu) is proud to provide __Training Infrastructure as a Service (TIaaS)__ for the Galaxy training community.
You provide the training, we provide the __infrastructure at no cost__.



## Why TIaaS?

- Private queue where only your training's jobs will run.
- No Galaxy maintenance.
- No Galaxy administration.
- Free infrastructure.
- Official [Galaxy Training Materials](https://training.galaxyproject.org) are guaranteed to work and [regularly tested](https://github.com/usegalaxy-eu/workflow-testing/).
- See how your students are progressing with [our dashboard](/posts/2019/06/17/tiaas-queue/):

  ![TIaaS Queue Visualizer](/assets/media/tiaas-queue.png)



## How TIaaS Works

We have several "pools" of virtual machines (VMs) attached to UseGalaxy.eu that run user jobs. For trainings that request TIaaS, we attach a new pool of VMs that is specially labelled for that training. When users join a training using a __special URL__ we provide you, they are assigned to a __special training group__. Their jobs will then __preferentially run on a training machine__, and, in the event there is no more capacity, they
will run on the main queue. If a spot on a training VM opens up first, they
will run there rather than continuing to wait in the main queue. The jobs run by the rest of users on our server are instructed to avoid the training pools.

Some more general information about the TIaaS service:

- [A calendar](https://usegalaxy.eu/tiaas/calendar/) that shows when TIaaS trainings are booked.
- [Some statistics](https://usegalaxy.eu/tiaas/stats/) about the TIaaS events.

### Before the training

Before users can join a specific training, they need to be __logged into the [European Galaxy server](https://usegalaxy.eu/)__.

To __import data__:

- If you are using the [GTN material](training.galaxyproject.org/) for
your workshop, then all the [training data is already mirrored into Galaxy](https://usegalaxy.eu/libraries/folders/Fa21272e5bd712216).

- If you are using your own data, you can upload it to your account
into a history. Later, you can [make it accessible](https://usegalaxy.eu/histories/sharing) to your trainees (do not
forget to also share the datasets by clicking `Also make all objects within the History accessible`). Your trainees will then be able to import
your history and start working with your data.

We recommend to use Galaxy's [short-term storage](https://galaxyproject.org/eu/storage/#short-term-storage) during the training. This will help us in cleaning up unused data and offer Galaxy as a more sustainable service. For more information please consult our [storage page](https://galaxyproject.org/eu/storage/). To switch to the short-term storage, click on the `Preferred Storage` on the right panel (History panel):

![short-term-storage-history](https://github.com/user-attachments/assets/2c0c549b-5120-4356-9266-c4fd9c635c64)

Then, click on the `Short term storage for e.g. method development` to switch to this type of storage for your training session.

![short-term-storage-option](https://github.com/user-attachments/assets/51aa76ee-c0f9-4c86-a3ef-9bec7407a34e)

### After the training

Once the training is over, the data will stay available for further use. However, we encourage you to __clean up all the histories__ whenever this data will not be used anymore.

To keep running this free service for your trainees, __we need your feedback and support__. It would be great if you could:

- Write a (short) blog post that we will __publish in our website__. You can find examples [here](/news?tag=TIaaS).
- Fill out the [__GTN Survey__](https://galaxyproject.org/news/2020-01-training-feedback/).
- Give feedback about a tutorial on [__GitHub__](https://github.com/galaxyproject/training-material/issues/1452).
- Tweet about your training tagging [__@galaxyproject__](https://twitter.com/galaxyproject).



## Service Level Agreement

We *cannot* promise any degree of uptime. We will do our best to have this service online and functioning during the entire time period, but there are cases where the service may experience interruptions that are outside of our control. We will keep you informed of any outages that may affect your training.



## Eligibility

We have significant capacity and have dedicated some of this to providing
training using our service. Anyone providing training on using Galaxy is
eligible to request the use of this service.



## Application Process

1. Fill out the request form:

   {% include button.html url="https://usegalaxy.eu/tiaas/new/" text="Request Training Infrastructure" %}

   Please try to submit your application __at least two weeks in advance of the training__.

2. With the information that you input in the form, we will:
  - estimate how many VMs are needed for your training to run smoothly and will ask for your feedback,
  - setup the private queue and give you a URL your users will access to join the training,
  - give you a URL to the dashboard for you to see the queue status.

3. Done! You are ready to run your training!
