FROM quay.octanner.io/developer/oct-maven:3.5

WORKDIR /app

COPY . /app/

RUN mvn clean package tomee:exec

EXPOSE 8080

CMD ["./start.sh"]