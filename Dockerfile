FROM quay.octanner.io/base/oct-java:8

WORKDIR /app

COPY . /app/

RUN mvn clean package tomee:exec

EXPOSE 8080

CMD ["java -jar target/test-exec.jar"]