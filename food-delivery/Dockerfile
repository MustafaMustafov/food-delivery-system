FROM openjdk:17-jdk-slim

COPY target/food-delivery-0.0.1-SNAPSHOT.jar /app/food-delivery.jar

WORKDIR /app

CMD ["java", "-jar", "food-delivery.jar"]