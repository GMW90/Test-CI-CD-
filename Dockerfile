FROM openjdk: 8-jdk-alpine
LABEL maintainer="its-me.org"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/websocket-demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} websocket-demo.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/websocket-demo.jar"]