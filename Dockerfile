FROM eclipse-temurin:21-jre

WORKDIR /app

ARG JAR_FILE=target/appointmentscheduler-1.0.5.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]