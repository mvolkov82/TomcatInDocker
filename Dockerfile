FROM tomcat:9.0.67-jdk17-temurin-jammy

RUN mkdir -p /usr/local/tomcat/webapps/myapp

ADD hello-1.0.war /usr/local/tomcat/webapps/myapp

CMD ["catalina.sh", "run"]