FROM tomcat:latest

RUN mkdir -p /usr/local/tomcat/webapps/myapp

ADD hello-1.0.war /usr/local/tomcat/webapps/myapp

CMD ["catalina.sh", "run"]