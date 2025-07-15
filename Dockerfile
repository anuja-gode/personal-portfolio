# Use Eclipse Temurin (OpenJDK) base image
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy all files
COPY . .

# Build the application
RUN ./mvnw clean install

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "target/portfolio-0.0.1-SNAPSHOT.jar"]
