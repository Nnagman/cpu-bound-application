FROM openjdk:8-jdk-alpine
RUN ls \
    chmod 544 mvnw \
    mvnw clean package
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]