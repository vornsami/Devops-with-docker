FROM openjdk:latest

WORKDIR /usr/src/app

COPY . ./

RUN sed -i -e 's/\r$//' ./mvnw
RUN ./mvnw package

EXPOSE 8080

CMD java -jar ./target/docker-example-1.1.3.jar

# Build with command: docker build -t spring-example .

# Run with command: docker run -d -ti -p 8080:8080 spring-example