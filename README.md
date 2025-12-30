# Nginx-PHP-MySQL User Registration App

A multi-tier web application demonstrating containerization, Kubernetes orchestration, and CI/CD pipeline integration.

## Technology Stack
- Web Server: Nginx
- Backend: PHP-FPM
- Database: MySQL
- Containerization: Docker
- Orchestration: Kubernetes (local cluster)
- CI/CD: Jenkins freestyle project
- GitHub: [link]
- Docker Hub: [link]

## Architecture
[User] → [Nginx POD] → [PHP-FPM POD] → [MySQL POD]
- Nginx POD handles HTTP requests
- PHP-FPM POD processes backend
- MySQL POD stores user data

## Deployment Steps
1. Build Docker images for Nginx, PHP, MySQL using Jenkins freestyle project
2. Push images to Docker Hub
3. Apply Kubernetes manifests:
4. Access application via NodePort

## Features
- Responsive HTML/CSS registration form
- PHP backend for form submissions
- MySQL database initialization
- Kubernetes deployment for scalability and orchestration

## Learning Outcomes
- Hands-on Docker image creation and container orchestration
- Multi-tier application deployment on Kubernetes
- CI/CD integration using Jenkins freestyle project
- Experience with pod management, services, and Kubernetes manifests
