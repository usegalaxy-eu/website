---
layout: default-galaxy
title: FTP Configuration
permalink: /ftp/
---

# UseGalaxy.eu FTP Server

## Servers

Server                   | Port | Properties
-----------------------  | ---- | ----
`ftp.usegalaxy.eu` | 21   | Secure connections only (TLS).
{:.table.table-striped}

## Upload multiple files via curl

`curl -T {"file1,file2"} --user user@name.de --ssl ftp://ftp.usegalaxy.eu`

The comma-separated list of files needs to be quoted and must not contain spaces: `{"file1,file2"}`

## Credentials

Use the same email address and password that you use to log in to [usegalaxy.eu](https://usegalaxy.eu)

## More Information

For more information on using FTP with Galaxy, please see the [official
documentation](https://galaxyproject.org/ftp-upload/). As always, don't
hesitate to send us an
[Email](mailto:galaxy@informatik.uni-freiburg.de?subject=FTP+Issue) if you
have any issues.
