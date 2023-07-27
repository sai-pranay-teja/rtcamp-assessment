FROM mariadb:latest
RUN mkdir /work
WORKDIR /work
COPY files/run.sh .
ENTRYPOINT [ "bash", "run.sh" ]
