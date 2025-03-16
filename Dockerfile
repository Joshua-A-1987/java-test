FROM openjdk:8-jre-alpine

EXPOSE 8080

# Updated the correct path for the JAR file (java-app-1.0-SNAPSHOT.jar instead of my-app-1.0-SNAPSHOT.jar)
# COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/ ---> Incorrect Path

COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
