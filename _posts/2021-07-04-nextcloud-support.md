---
site: freiburg
tags: [tools]
title: ownCloud and Nextcloud integration for your private data
supporters:
- denbi
- elixir
---

[ownCloud](https://owncloud.com/) and [Nextcloud](https://nextcloud.com/) are free software solutions for the storage and management of data.
Many universities are offering own Nextcloud instances where researchers can store and share data in a GDPR compliant way.

We have now added support to Galaxy to interact with your storage. You can import data from you Nextcloud instance or export data from your history
to your cloud storage. Technically this works by using the [WebDAV](https://en.wikipedia.org/wiki/WebDAV) protocol and you can use this integration with
every server that speaks this protocol. In the following we will give you a few examples how to configure your Galaxy account to make use of that feature.

In all cases you need to go User → Preferences → [Manage Information](https://usegalaxy.eu/user/information)

![](/assets/media/b2drop_access.png)


For example to get access to the [B2Drop service of EUDAT](https://eudat.eu/services/b2drop). You can configure your settings like:
    Server Domain: https://b2drop.bsc.es
    Server Path: /remote.php/webdav
    Username: <your username> (e.g. your email)
    Password: <your password>

For the CRC1452 you ...
