FROM openjdk:17
VOLUME /tmp
EXPOSE 8585
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} api-gateway.jar
ENTRYPOINT ["java","-jar","/api-gateway.jar"]