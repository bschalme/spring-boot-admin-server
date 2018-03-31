FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080

COPY build/libs/spring-boot-admin-server-*.jar /opt/spring-boot-admin-server.jar

WORKDIR /opt
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "spring-boot-admin-server.jar"]