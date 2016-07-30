FROM microsoft/iis
MAINTAINER Andrew Wu, https://www.facebook.com/andrewwu.blog.0928

LABEL Description="open camp demo" Vendor="Andrew Studio" Version="8.27.0.0"

# RUN powershell -Command Add-WindowsFeature Web-Server
# RUN c:/windows/microsoft.net/framework/v2.0.50727/aspnet_regiis.exe -i

RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45
ADD webapp c:/inetpub/wwwroot/

CMD [ "ping", "localhost", "-t" ]




# docker build --force-rm -t=andrew/mvcdemo:latest x:\
# docker run --name demo -d -p 80:80 andrew/mvcdemo
# docker exec -t -i demo cmd.exe

# docker rm -f demo
# docker rmi andrew/mvcdemo