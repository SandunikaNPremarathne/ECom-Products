# Use a base image with Java 21 (e.g., JDK 17)
FROM openjdk:21-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged WAR file into the container
COPY target/product-service-0.0.1-SNAPSHOT.war /app/app.war

# Expose the port that your Spring Boot application listens on
EXPOSE 8081

# Define the command to run your application
CMD ["java", "-jar", "app.war"]