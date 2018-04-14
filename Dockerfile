FROM openjdk:8-jdk-alpine
VOLUME /tmp
VOLUME /config
EXPOSE 8080

LABEL maintainer="Brian Schalme <bschalme@airspeed.ca>"

COPY . /opt/spring-boot-admin-server/
WORKDIR /opt/spring-boot-admin-server/
RUN ./gradlew build

COPY build/libs/spring-boot-admin-server-*.jar /opt/spring-boot-admin-server.jar
RUN ./gradlew clean
WORKDIR /opt
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "spring-boot-admin-server.jar"]