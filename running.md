# Running the containerized petshop
This document describes how to run the containerized petshop. 

For an introduction of petshop, check out [this page](./README.md)

## Introduction
Petshop 4.0 is an ASP.NET 2.0 web application with an SQL Server database. To containerize it, the webapp is packaged in a container image and the database is another container image. The web image uses the microsoft/aspnet:3.5 base image, with IIS and .NET Framework 3.5, and the web application and its components. The database image actually is the microsoft/ms-sql-server image, and when it is started it is configured and databases are attached, 

## Download
The first action is to get the content from github. You can either use your favorite Git tool or just download the compressed archive and extract it. 

## Todo
