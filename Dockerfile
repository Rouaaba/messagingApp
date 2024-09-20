# Use a base image with Java
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file (replace with the actual JAR name)
COPY target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
