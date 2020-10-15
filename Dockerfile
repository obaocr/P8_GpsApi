FROM openjdk:8-jdk-alpine
LABEL responsable="o.barberis@outlook.fr"
EXPOSE 8046:8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gpsapi.jar
ENTRYPOINT ["java","-jar","/gpsapi.jar"]