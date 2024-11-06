# Stage 1: Python setup
FROM python:3.8-slim as python-stage
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

# Stage 2: Node.js setup
FROM node:14 as node-stage
WORKDIR /app
COPY . .
RUN npm install

# Stage 3: Java setup (for OrderService)
FROM openjdk:11 as java-stage
WORKDIR /app
COPY target/OrderService-0.0.1-SNAPSHOT.jar OrderService.jar
ENTRYPOINT ["java", "-jar", "OrderService.jar"]

