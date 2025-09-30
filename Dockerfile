# 이 도커 파일을 이용해서 build/libs 폴더 안에 있는 jar파일을 복사해서 Spring 서버로 구동
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]