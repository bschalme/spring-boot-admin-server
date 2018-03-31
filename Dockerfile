FROM java:8-jre-alpine

EXPOSE 8080

COPY build/libs/spring-boot-admin-server-*.jar /opt/spring-boot-admin-server.jar

WORKDIR /opt
ENTRYPOINT ["java", "-jar", "spring-boot-admin-server.jar"]