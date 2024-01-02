FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

#COPY .gradle/ .gradle
COPY gradle/ gradle
COPY gradlew build.gradle ./
RUN ./gradlew --refresh-dependencies 

COPY src ./src

CMD ["./gradlew", "bootRun"]
