FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
# Run the application
CMD ["java", "-jar", "app.jar"]
