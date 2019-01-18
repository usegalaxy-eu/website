---
site: freiburg
tags: [devops, downtime]
title: Queue cleared
location: Galaxy Europe
---

We had to clear the queue due to an emergency today. We had noticed that a
filesystem was extremely slow around 2 days ago, and had updated our Galaxy
configuration to work around this. Unfortunately we failed to restart the
handlers so new datasets continued to be written to that path, until the point
at which it became an emergency and the system became completely unresponsive.

We cleared the queue in order to allow us to restart the handlers,
unfortunately we did not have a way to re-schedule the jobs we had to kill.

We're sorry for any inconvenience this has caused, this should be a one-time
issue. Please restart your jobs at your convenience.

- Helena
