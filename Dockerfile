FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/spring-aws-ecs-service.jar spring-aws-ecs-service.jar
ENTRYPOINT ["java","-jar","/spring-aws-ecs-service.jar"]