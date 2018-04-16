# spring-boot-admin-server

[![Docker Automated build](https://img.shields.io/docker/automated/bschalme/spring-boot-admin-server.svg?style=flat-square)](https://hub.docker.com/r/bschalme/spring-boot-admin-server/builds/)
[![Image Size](https://images.microbadger.com/badges/image/bschalme/spring-boot-admin-server.svg)](https://microbadger.com/images/bschalme/spring-boot-admin-server)

This is a Docker-ized version of codecentric AG's [Spring Boot Admin](https://github.com/codecentric/spring-boot-admin).

Build the Spring Boot Admin Server as you would any other Gradle app:

```
./gradlew build
```

To build the Docker container:

```
docker build -t username/spring-boot-admin-server:latest .
docker push username/spring-boot-admin-server:latest
```

The preceding example tags and pushes the image to Docker Hub under `username`. If you are using a private registry, 
replace `username` with the FQDN of your Docker registry.

To run in Docker:

```
docker run -dp 8080:8080 username/spring-boot-admin-server
```
