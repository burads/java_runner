FROM openjdk:latest

WORKDIR /usr/src/app

COPY ./run.sh /usr/src/app/
RUN chmod +x run.sh


EXPOSE 8080/tcp
EXPOSE 8081/tcp
EXPOSE 8082/tcp
EXPOSE 8083/tcp


CMD [ "./run.sh" ]