FROM openjdk:17-alpine

RUN apk update

COPY deploy.sh /
COPY *.jar /app.jar

ENTRYPOINT ["sh", "/deploy.sh"]