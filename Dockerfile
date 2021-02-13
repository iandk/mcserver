FROM debian:latest

WORKDIR /usr/src/mcserver


RUN apt update && apt upgrade -y && apt install -y screen zip openjdk-11-jre-headless wget
RUN wget https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/437/downloads/paper-1.16.5-437.jar
RUN mv paper-1.16.5-437.jar mc.jar
RUN echo "eula=true" > eula.txt

EXPOSE 25565


ENTRYPOINT java -Xmx1024M -Xms512M -jar mc.jar



