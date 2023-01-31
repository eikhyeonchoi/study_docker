FROM mysql:8.0

ADD init.sql /docker-entrypoint-initdb.d
RUN chmod 755 /docker-entrypoint-initdb.d/init.sql