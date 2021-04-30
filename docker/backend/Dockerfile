FROM openjdk:latest
COPY help-queue-0.0.1-SNAPSHOT.jar /
COPY application-prod.properties /
CMD java -jar -Dspring.profiles.active=prod help-queue-0.0.1-SNAPSHOT.jar