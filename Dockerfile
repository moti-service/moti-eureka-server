FROM openjdk:21-jdk-slim

WORKDIR /app

COPY . .

RUN ./gradlew clean build -x test --no-daemon

CMD ["java", "-jar", "build/libs/moti-eureka-server-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=dev"]
