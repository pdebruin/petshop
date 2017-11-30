# Petshop
This document describes the containerization of a typical traditional application: Petshop 4.0 is an ASP.NET 2.0 web application with an SQL Server database. 

# tl:dr; How do I run this?
For instructions on how to run this containerized petshop, check out [this page](./running.md)

## Introduction
Docker is the container company and its go-to-market offering is Modernize Traditional Applications. MTA focusses on applications running on older operating systems like Windows Server 2000, 2003 and 2008 and Linux 5 and 6. The MTA approach is to package the application in a container, using a supported base image (like microsoft/windowsservercore) and running it on modern supported infrastructure (like Windows Server 2016).

Many organizations are interested in MTA. To really understand how MTA works, a demo is helpfull. However using a new application is too simple for a demo and an existing line-of-business application is too complex. For this purpose an existing public application is used as subject. 

## History
Microsoft Petshop 4.0 was released over 10 years ago as a sample application to demonstrate specific challenges from that time, like upgrading from .NET Framework 1.1 to 2.0. Since it is quite old, it is hard to find information about it. This post contains some more details  https://blog.codinghorror.com/net-pet-shop-4/ and the msi was available for download here at time of writing http://download.microsoft.com/download/8/0/1/801ff297-aea6-46b9-8e11-810df5df1032/Microsoft%20.NET%20Pet%20Shop%204.0.msi. For compleness a copy of the msi is also available in this repo.  

## Modernize Traditional Applications
MTA is first and foremost a generic usecase for containerization. When containers just became available, they were mostly used for new software development with modern patterns like microservices and 12 factors. After using containers some more, the advantages of portability, agility and security, became clear, and were just as appealing to existing applications. Actually the impact of containerizing existing applications is much greater, because it reduces maintenance cost and provides room for innovation instead. In April 2017 at DockerCon US, Docker announced the initial go-to-market offering with partners like Microsoft, HPE and Cisco. Later IBM and Accenture would follow. And obviously any partner or customer can containerize applications providing they have access to knowledge and technology. 

## MTA steps
The MTA go-to-market offering with Microsoft is to deploy the existing application to a container, and then run it with Docker Enterprise Edition on Microsoft Azure. For details on how this traditional application was containerized, check out [this page](./mta.md)