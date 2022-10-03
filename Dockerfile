FROM ubuntu:16.04

RUN apt-get update

RUN apt install default-jdk -y

ENV JAVA_HOME /usr/lib/jvm/default-java/
RUN export JAVA_HOME

RUN apt-get install git-all -y

RUN apt install maven -y

#RUN export M2_HOME=/opt/maven
#RUN export MAVEN_HOME=/opt/maven
#RUN export PATH=${M2_HOME}/bin:${PATH}


RUN apt-get install tomcat


RUN mkdir -p /usr/local/tomcat/webapps

ADD hello-1.0.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]