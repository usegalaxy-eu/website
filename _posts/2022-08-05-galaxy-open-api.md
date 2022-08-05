---
site: freiburg
tags: [galaxy]
title: New interactive API documentation in Galaxy
supporters:
- galaxy-europe
---

Since Galaxy release 22.05 it's much easier to **discover**, **explore**, **learn** and **experiment** with the *Galaxy Rest API*.

Thanks to the recent development efforts in modernizing the Galaxy backend by migrating our custom API framework to [FastAPI](https://fastapi.tiangolo.com/) and moving from a Synchronous (WSGI) to an Asynchronous Server Gateway Interface ([ASGI](https://asgi.readthedocs.io/en/latest/specs/main.html)), the Galaxy API is now [OpenAPI](https://github.com/OAI/OpenAPI-Specification) compliant. This enables many new features that were not possible with the previous framework.

One of those new features is that we now have interactive API documentation using [Swagger](https://swagger.io/)!

[You can go to https://usegalaxy.eu/api/docs and try it out now!](https://usegalaxy.eu/api/docs)

![Galaxy OpenAPI Demo](/assets/media/2022-08-05-galaxy-open-api.gif)

Galaxy and it's API is big! so there are still some undocumented routes out there. If you are familiar with Galaxy and want to help migrating more routes or improving the documentation you are very welcome! Please have a look at this [GitHub issue](https://github.com/galaxyproject/galaxy/issues/10889).


