---
layout: default-galaxy
title: FTP service instructions
permalink: /ftp/
---

-------

## We need your help and feedback ✨ 

We integrated a new way to upload data into Galaxy based on the [tus.io](https://tus.io/). This will enable our users to upload
large amounts of data via the web-interface in a more reliable way and with resumable file upload support. This also means that the 1GB limit
for uploads via your browser does __not__ exist anymore ✨ . If this scales well over the next month and you are happy, we would like to retire
the FTP server and encourage all our users to use the normal upload tool in Galaxy.

Try out the new upload system and [let us know how it goes](mailto:contact@usegalaxy.eu?subject=Tus.io+feedback).

-------


# UseGalaxy.eu FTP Server

Server                   | Port | Properties
-----------------------  | ---- | ----
`ftp.usegalaxy.eu` | 21   | Secure connections only (TLS).
{:.table.table-striped}

## Credentials

Use __the same email address and password__ that you are using to log in to __[usegalaxy.eu](https://usegalaxy.eu)__

## Service policies

Any user data uploaded to our FTP server should be imported into Galaxy as soon as possible. Data left in FTP folders for more than 3 months, will be deleted. 

# Howto

## Upload multiple files using a desktop application

This is intended for regular users who want to access the service through a desktop client.

We suggest installing and trying a simple application like [Filezilla](https://filezilla-project.org/download.php?type=client), available for Windows, MacOs and Linux operating systems.

All default settings should work fine. At the top:
* type in the `ftp.usegalaxy.eu` URL 
* type in your email + password (same as used to log into Galaxy at that server)  
* click on the button for “quick connect” 
* review and accept the certificate pop-ups 

Then it is as simple as navigating to the files on your computer on the left side and dragging them over to the server on the right side. The transfer status will be reported in the bottom tabs.

__Don’t quit out__ of the application or let your computer __sleep__ until the full data transfer is completed. Should a connection drop or a file partially transfer occur:
* click on quick-connect again
* review and accept server certificate pop-ups, if requested
* then click on “resume transfer”

## Upload multiple files via curl

This is intended for expert users who want to access the service through a command line.

`curl -T {"file1,file2"} --user user@name.de --ssl ftp://ftp.usegalaxy.eu`

The comma-separated list of files needs to be quoted and must not contain spaces: `{"file1,file2"}`

## Troubleshooting

If you are experiencing a __"Connection timed out after 20 seconds of inactivity"__, try the suggestions shown on this [page](https://help.galaxyproject.org/t/error-while-connecting-to-usegalaxy-eu-server/6815)
## More Information

For more information on using FTP with Galaxy, please see the [official
documentation](https://galaxyproject.org/ftp-upload/). As always, don't
hesitate to send us an
[Email](mailto:contact@usegalaxy.eu?subject=FTP+Issue) if you
have any issues.
