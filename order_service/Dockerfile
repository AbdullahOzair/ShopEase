# Stage 1: Python setup

# Stage 3: Java setup (for OrderService)
FROM openjdk:11 as java-stage
WORKDIR /app
COPY target/OrderService-0.0.1-SNAPSHOT.jar OrderService.jar
ENTRYPOINT ["java", "-jar", "OrderService.jar"]

