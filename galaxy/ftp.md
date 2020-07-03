---
layout: default-galaxy
title: FTP Configuration
permalink: /ftp/
---

# UseGalaxy.eu FTP Servers

## Servers

Server                   | Port | Properties
-----------------------  | ---- | ----
`ftp.usegalaxy.eu` | 21   | Insecure connections only, no support for tls.
{:.table.table-striped}

## Upload multiple files via curl

`curl -T {"file1,file2"} ftp://ftp.usegalaxy.eu --user user@name.de --ssl`

The list needs to be comma seperated, without spaces and in quotation: `{"file1,file2"}`

## Credentials

Use the same email address and password that you use to login to [usegalaxy.eu](https://usegalaxy.eu)

## More Information

For more information on using FTP with Galaxy, please see the [official
documentation](https://galaxyproject.org/ftp-upload/). As always, don't
hesitate to send us an
[Email](mailto:galaxy@informatik.uni-freiburg.de?subject=FTP+Issue) if you
have any issues.
