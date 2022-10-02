FROM tomcat:9.0.67-jdk17-temurin-jammy

RUN mkdir -p /usr/local/tomcat/webapps

ADD hello-1.0.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]