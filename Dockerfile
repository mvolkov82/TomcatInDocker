FROM ubuntu:16.04

RUN apt-get update

RUN apt install maven -y






RUN mkdir -p /usr/local/tomcat/webapps

ADD hello-1.0.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]