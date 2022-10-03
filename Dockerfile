FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install openjdk-8-jdk wget

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN export JAVA_HOME

RUN apt-get install git-all -y

RUN apt install maven -y

#RUN export M2_HOME=/opt/maven
#RUN export MAVEN_HOME=/opt/maven
#RUN export PATH=${M2_HOME}/bin:${PATH}


#RUN apt-get install tomcat -y
#RUN sudo apt-get install tomcat9 -y


RUN apt-get -y install curl
RUN mkdir /usr/local/tomcat
#RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz -O /tmp/tomcat.tar.gz
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.0/bin/apache-tomcat-10.1.0.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /
RUN cd tmp
RUN ll
RUN tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.1.0/* /usr/local/tomcat/
EXPOSE 8080



RUN mkdir -p /usr/local/tomcat/webapps

ADD hello-1.0.war /usr/local/tomcat/webapps

#CMD ["catalina.sh", "run"]
# Define default command.
CMD ["bash"]

MAINTAINER bhaskarndas@gmail.com


WORKDIR /usr/local/tomcat/webapps
RUN curl -O -L https://github.com/bhaskarndas/sample-war/raw/main/sampletest.war


CMD ["catalina.sh", "run"]