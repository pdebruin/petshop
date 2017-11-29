# escape=`
FROM microsoft/aspnet:3.5
#SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

#RUN Add-WindowsFeature Web-Asp-Net

#RUN Remove-Website 'Default Web Site'

# Set up website: app
COPY web /inetpub/wwwroot

#RUN New-Website -Name 'app' -PhysicalPath "C:\websites\app" -Port 80 -Force

EXPOSE 80
