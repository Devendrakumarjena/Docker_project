#!/bin/bash

# Clone the repository
git clone https://github.com/Devendrakumarjena/Docker_project.git
cd fullstack-app

# Build and start the containers
docker-compose up --build -d

# Wait for services to be ready
echo "Waiting for services to start..."
sleep 10

# Print access information
echo "
Application is now running!
Frontend: http://localhost
Backend API: http://localhost:8080
Swagger UI: http://localhost:8080/swagger-ui.html
" 