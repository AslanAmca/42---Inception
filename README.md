# Inception

**Inception** is a system administration and DevOps project from Ecole 42. The goal of the project is to learn how to create and manage multiple services on a single server using Docker and containerization. Inception focuses on deploying a multi-container infrastructure while ensuring that all services are isolated and can communicate efficiently within the same environment.

## Project Overview

The **Inception** project consists of building a Docker-based infrastructure with multiple containers. These containers will run services such as:

- A web server (Nginx)
- A database (MariaDB or PostgreSQL)
- A WordPress site (PHP-FPM with WordPress installed)

The project involves setting up a reverse proxy, securing communications with SSL certificates, and configuring services to interact with each other properly. All containers should be managed using Docker Compose, and each service must be deployed in a separate container.

## Objectives

- **Containerization**: Learn to containerize services using Docker.
- **Infrastructure as Code**: Implement a multi-service environment with Docker Compose.
- **Isolation**: Ensure services are isolated in separate containers.
- **Security**: Secure communications using SSL (HTTPS).
- **Service Management**: Properly configure services to interact with each other.
- **Automation**: Use Docker Compose to easily manage and automate the environment.

## Technologies

- **Docker**: Containerization platform used to isolate services.
- **Docker Compose**: Tool to define and manage multi-container Docker applications.
- **Nginx**: Web server acting as a reverse proxy.
- **MariaDB/PostgreSQL**: Relational database for storing data.
- **PHP-FPM**: FastCGI Process Manager for handling PHP requests in WordPress.
- **WordPress**: Content Management System (CMS) hosted on the server.

## Infrastructure Overview

The project requires you to set up the following:

1. **Nginx**: As a reverse proxy for handling incoming HTTP requests and directing them to the appropriate service.
2. **WordPress**: Running inside a container, powered by PHP-FPM.
3. **Database (MariaDB/PostgreSQL)**: A relational database container that stores WordPress data.
4. **SSL Certificates**: Use self-signed or Let's Encrypt certificates to secure the web traffic.

All services must be deployed using Docker Compose, with each service running in its own container. The entire setup should be easily reproducible and configurable using environment variables.

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/AslanAmca/inception
   cd inception
2. Make sure Docker and Docker Compose are installed on your system.
3. Create a .env file to store variables such as database credentials, WordPress settings, and SSL certificate paths. For example:
	```bash
	DB_NAME=wordpress
	DB_USER=wpuser
	DB_PASSWORD=wppassword
	DB_HOST=db
	```
4. Build and run the Docker containers using Docker Compose with Makefile:
	```bash
	make
5. Access the Services:
WordPress will be accessible at https://your-domain.com.
Ensure that SSL certificates are correctly configured to enable HTTPS.
