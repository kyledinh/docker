FROM openjdk:11-jre-stretch
WORKDIR /opt
ADD plantuml.jar /opt/

RUN mkdir /host
WORKDIR /host

ENTRYPOINT ["java", "-jar", "/opt/plantuml.jar", "-svg"]
