# Base Image
FROM node:18-alpine AS node
FROM python:3.9-slim AS python
FROM golang:1.18 AS golang
FROM openjdk:11 AS java

# Set Working Directory
WORKDIR /app

# Copy Code
COPY src/ /app/

# Detect Language and Run App
CMD ["sh", "-c", "
  if [ -f /app/Main.java ]; then
    javac /app/Main.java && java -cp /app Main;
  elif [ -f /app/app.py ]; then
    python /app/app.py;
  elif [ -f /app/main.go ]; then
    go run /app/main.go;
  elif [ -f /app/server.js ]; then
    node /app/server.js;
  else
    echo 'No supported language found!';
  fi
"]