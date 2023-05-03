# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the Gradle files to the container
COPY gradlew gradlew.bat ./
COPY gradle gradle/

# Copy the build script and project files to the container
COPY build.gradle ./
COPY src src/

# Build the application with Gradle
RUN ./gradlew build

# Set the startup command to run the JAR file
CMD ["java", "-jar", "build/libs/helloworld.jar"]

