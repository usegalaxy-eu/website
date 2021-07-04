---
site: freiburg
tags: [tools]
title: ownCloud and Nextcloud integration for your private data
supporters:
- denbi
- elixir
---

[ownCloud](https://owncloud.com/) and [Nextcloud](https://nextcloud.com/) are free software solutions for the storage and management of data.
Many universities are offering their own Nextcloud instances where researchers can store and share data in a GDPR compliant way.

We have now added support to Galaxy to interact with your storage. You can import data from your Nextcloud instance or export data from your history
to your cloud storage. Technically, this works by using the [WebDAV](https://en.wikipedia.org/wiki/WebDAV) protocol and you can use this integration with
every server that speaks this protocol. 

Here are some examples of how to configure your Galaxy account to make use of that feature.

In all cases you need to go User → Preferences → [Manage Information](https://usegalaxy.eu/user/information)

![](/assets/media/b2drop_access.png)


Once configured you will find an option called "Choose remote files" in the normal Galaxy upload box.
Choose "Nextcloud/ownCloud" and select your files you want to import.


For example to get access to the [B2Drop service of EUDAT](https://eudat.eu/services/b2drop).
You can configure your settings like:

>  Server Domain: `https://b2drop.bsc.es`
>
>  Server Path: `/remote.php/webdav`
>
>  Username: `<your username>` (e.g. your email)
>
>  Password: `<your password>`

As a member of the [CRC1425](https://www.sfb1425.uni-freiburg.de) ("The heterocellular nature of cardiac lesions: Identities, interactions, implications")
you can use settings like:

>  Server Domain: `https://nxc-1425.imbi.uni-freiburg.de`
>
>  Server Path: `/remote.php/webdav`
>
>  Username: `<your username>` (e.g. your email)
>
>  Password: `<your password>`



