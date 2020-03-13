FROM openjdk:8-jre-alpine
RUN mkdir /core
COPY ./core/target/*.jar core/core.jar
CMD java -jar core.jar
