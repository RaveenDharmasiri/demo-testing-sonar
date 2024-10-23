# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar

# Expose the port that the application will run on (adjust as needed)
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "demo.jar"]
