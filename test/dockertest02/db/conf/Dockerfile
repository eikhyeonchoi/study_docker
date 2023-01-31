FROM mysql:8.0

ADD ../init/init.d /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/init.d