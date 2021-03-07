FROM centos:7
CMD /bin/bash
RUN yum install -y java \
    chmod 544 mvnw \
    mvnw clean package
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]