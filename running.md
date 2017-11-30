# Running the containerized petshop
This document describes how to run the containerized petshop. 

For an introduction of petshop and modernize traditional applications, check out [this page](./README.md)

## Introduction
Petshop 4.0 is an ASP.NET 2.0 web application with an SQL Server database. To containerize it, the webapp is packaged in a container image and the database is another container image. The web image uses the microsoft/aspnet:3.5 base image, with IIS and .NET Framework 3.5, and the web application and its components. The database image actually is the microsoft/ms-sql-server image, and when it is started it is configured and databases are attached, 

## Download
The first action is to get the content from github. You can either use your favorite Git tool or just download the compressed archive and extract it. 

## Edit docker-compose
Next navigate in to the docker folder where you will see the docker-compose.yml file. You will need to edit this file to personalize image names, sql password and data/log files location. 

First see the 'pdebruin/petshopweb:4' and 'pdebruin/petshopdb:4' image names. A container image name consists of <user id>/<repository name>:<tag>. As you can see my Docker hub id is pdebruin, my repository name is petshopweb and as tag I have used 4, the petshop version. You can keep these names if you don't want to push them to your own repository or personalize it. Optionally when you work with another registry, like Docker Trusted Registry, instead of Docker Hub, you can prefix the image name with <registry fqdn>/. So that would be something like dtr.pieterdebruin.net/pdebruin/petshopweb:4, obviously with your personal values. 

Second find the sa_password key and value. Replace this with your own password or keep this for demo purposes. (Ideally this should be using a strong password with secrets)

Third find the volumes section and change the 'C:/_projects/petshop4/petshop/docker/db:C:/tempdb/' mapping to your own. So that would be something like <your working folder>/db:C:/tempdb/. You will see that the tempdb folder is used in the attach_dbs section, so you can also change the tempdb folder name but then change it everywhere. (Ideally this should be using persistent storage outside the host like Azure files)

Ok, so you have personalized image names, sql password and data/log files location.

## Start
Now you are ready to start the containers with 'docker-compose up -d'. You will see the db and web started. If you don't have docker-compose, get it here https://docs.docker.com/compose/install.

Once the containers are started, do 'docker ps' to find the container id of the web container and then do 'docker inspect <container id>' to find the ipaddress. Finally open a browser and browse to the ipaddress. 