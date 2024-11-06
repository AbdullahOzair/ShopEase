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

# Decide which stage to run based on your needs
# Use 'python-stage' to run the Python app or 'node-stage' to run the Node.js app.


