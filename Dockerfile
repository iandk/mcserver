FROM debian:latest

WORKDIR /usr/src/mcserver


RUN apt update && apt upgrade -y && apt install -y screen zip openjdk-17-jdk-headless wget
RUN wget https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/196/downloads/paper-1.17.1-196.jar -O mc.jar
RUN echo "eula=true" > eula.txt

EXPOSE 25565


ENTRYPOINT java -Xmx1024M -Xms512M -jar mc.jar



