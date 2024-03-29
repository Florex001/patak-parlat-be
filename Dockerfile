#FROM ubuntu:latest AS build
#LABEL authors="Balogh Dávid"
#
#RUN apt-get update
#RUN apt-get install openjdk-17-jdk maven -y
#
#WORKDIR /app
#COPY . .
#RUN mvn clean package
#
#FROM openjdk:17-jdk-slim
#EXPOSE 8081
#
#WORKDIR /app
#COPY --from=build /app/target/dummyAPI-23R12.jar app.jar
#
#ENTRYPOINT ["java", "-jar", "app.jar"]

FROM openjdk:21-jdk
EXPOSE 8081
ADD target/${project.version}.jar ${project.version}.jar
ENTRYPOINT ["java", "-jar", "/${project.version}.jar"]
