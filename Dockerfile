FROM quay.octanner.com/base/oct-java:8

WORKDIR /app

COPY . .

RUN mvn clean package tomee:exec

EXPOSE 8080

CMD ["java -jar target/test-exec.jar"]