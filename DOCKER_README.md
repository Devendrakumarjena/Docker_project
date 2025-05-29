# Docker Setup Instructions

This document provides instructions for running the full-stack application using Docker.

## Prerequisites

- Docker
- Docker Compose
- Git

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/fullstack-app.git
   cd fullstack-app
   ```

2. Run the setup script:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

   Or manually:
   ```bash
   docker-compose up --build
   ```

## Accessing the Application

Once the containers are running, you can access:
- Frontend: http://localhost
- Backend API: http://localhost:8080
- Swagger UI: http://localhost:8080/swagger-ui.html

## Container Information

The application consists of three containers:

1. **PostgreSQL Database**
   - Port: 5432
   - Database: fullstack_db
   - Username: postgres
   - Password: root

2. **Spring Boot Backend**
   - Port: 8080
   - Built from: backend/Dockerfile
   - Depends on: PostgreSQL

3. **Angular Frontend**
   - Port: 80
   - Built from: frontend/Dockerfile
   - Depends on: Backend

## Managing Containers

- Stop all containers:
  ```bash
  docker-compose down
  ```

- View logs:
  ```bash
  docker-compose logs -f
  ```

- Rebuild and restart:
  ```bash
  docker-compose up --build
  ```

## Troubleshooting

1. If the database connection fails:
   ```bash
   docker-compose down -v
   docker-compose up --build
   ```

2. If the frontend can't connect to the backend:
   - Check if the backend is running: `docker-compose ps`
   - Check backend logs: `docker-compose logs backend`

3. To clean up all containers and volumes:
   ```bash
   docker-compose down -v
   docker system prune -a
   ``` 