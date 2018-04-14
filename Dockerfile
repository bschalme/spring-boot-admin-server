FROM openjdk:8-jdk-alpine
VOLUME /tmp
VOLUME /config
EXPOSE 8080

LABEL maintainer="Brian Schalme <bschalme@airspeed.ca>"

COPY . /opt/spring-boot-admin-server/
WORKDIR /opt/spring-boot-admin-server/
RUN ./gradlew build && \
  cp ./build/libs/spring-boot-admin-server-*.jar /opt/spring-boot-admin-server.jar && \
  ./gradlew clean &&\
  rm -rf ~/.gradle/caches/modules-2/files-2.1/

WORKDIR /opt
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "spring-boot-admin-server.jar"]

