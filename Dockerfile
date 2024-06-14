# Use the official OpenJDK as a base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/*.jar application.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8081

# Run the JAR file
ENTRYPOINT ["java", "-jar", "application.jar"]

