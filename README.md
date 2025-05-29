# Full Stack Application (Angular + Spring Boot + PostgreSQL)

This is a full-stack application built with:
- Frontend: Angular 17
- Backend: Spring Boot 3.2.x
- Database: PostgreSQL

## Project Structure
```
fullstack-app/
├── frontend/          # Angular application
└── backend/           # Spring Boot application
```

## Prerequisites
- Node.js (v18 or later)
- Java 17 or later
- PostgreSQL
- Maven
- Angular CLI
- Docker and Docker Compose (for containerized deployment)

## Setup Instructions

### Option 1: Local Development Setup

#### Backend Setup
1. Navigate to the backend directory:
   ```bash
   cd backend
   ```
2. Configure PostgreSQL database in `application.properties`
3. Run the Spring Boot application:
   ```bash
   ./mvnw spring-boot:run
   ```

#### Frontend Setup
1. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Run the development server:
   ```bash
   ng serve
   ```

### Option 2: Docker Setup (Recommended)

1. Build and start all services using Docker Compose:
   ```bash
   docker-compose up --build
   ```

2. Access the application:
   - Frontend: http://localhost
   - Backend API: http://localhost:8080
   - Swagger UI: http://localhost:8080/swagger-ui.html

3. To stop all services:
   ```bash
   docker-compose down
   ```

## Features
- User authentication
- CRUD operations
- RESTful API
- Responsive UI
- Containerized deployment with Docker

## API Documentation
The API documentation is available at `http://localhost:8080/swagger-ui.html` when the backend is running. 