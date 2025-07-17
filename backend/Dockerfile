FROM maven:3.9.3-amazoncorretto-17 AS build
WORKDIR /app

# Copy Maven project files and sources
COPY pom.xml checkstyle.xml ./
COPY src ./src

# Build executable JAR
RUN mvn clean package -DskipTests

# =================================
# STAGE 2: Run Spring Boot Jar
# =================================
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app

# Copy the packaged JAR from build stage
COPY --from=build /app/target/*.war app.war
COPY ./setenv.sh /app/setenv.sh
RUN apt-get update && apt-get install -y dos2unix \
 && dos2unix /app/setenv.sh \
 && chmod +x /app/setenv.sh

RUN . /app/setenv.sh
# Expose application port
EXPOSE 8080

# Launch the Spring Boot application (embedded Tomcat)
CMD ["sh","-c","exec java -jar /app/app.war"]
