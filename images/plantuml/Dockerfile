FROM openjdk:11-jre-stretch
RUN mkdir /app
WORKDIR /app
COPY plantuml.jar /app

ENTRYPOINT ["java", "-jar", "plantuml.jar", "-svg"]
