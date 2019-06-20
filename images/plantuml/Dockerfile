FROM openjdk:11-jre-stretch
WORKDIR /opt
ADD plantuml.jar /opt/

RUN apt-get update
RUN apt-get install -y graphviz

RUN mkdir /host
WORKDIR /host

ENTRYPOINT ["java", "-jar", "/opt/plantuml.jar", "-svg"]
