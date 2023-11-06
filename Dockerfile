# Use the official OpenJDK 17 image as the base image
FROM tonykayclj/jdk17-tools-deps-node14-chrome:latest

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/SpringDataRest-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot app is running on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]