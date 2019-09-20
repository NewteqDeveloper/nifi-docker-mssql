# nifi-docker-mssql
This project is an example of a docker container of NiFi that allows you to connect to MS-SQL-Server

# What?

If you are running nifi via a docker image like `apache/nifi`, the following should help you get the required driver on the image so that you don't need to `exec` into the container to do it manually.

 1. The image uses `apache/nifi` as the base image.
 2. You can specify any location for `lib/jdbc`, just remember that you need to use this as the reference for the file location so that it is referenced as `file:///lib/jdbc/mssql-jdbc-6.2.2.jre8.jar` (see the below image for a reference as to where this goes)

![jdbc-file-reference](http://url/to/img.png)

# Why?

https://stackoverflow.com/q/41489816/2523968
