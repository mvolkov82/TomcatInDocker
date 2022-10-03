FROM tomcat:latest

RUN mkdir -p /usr/local/tomcat/webapps

ADD hello-1.0.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]