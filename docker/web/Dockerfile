# escape=`
FROM mcr.microsoft.com/dotnet/framework/aspnet:3.5-windowsservercore-ltsc2019
#mcr.microsoft.com/dotnet/framework/aspnet:3.5-windowsservercore-ltsc2019
#FROM microsoft/aspnet:3.5

#SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]
#RUN Add-WindowsFeature Web-Asp-Net
#RUN Remove-Website 'Default Web Site'
COPY . /inetpub/wwwroot
#RUN New-Website -Name 'app' -PhysicalPath "C:\websites\app" -Port 80 -Force

EXPOSE 80