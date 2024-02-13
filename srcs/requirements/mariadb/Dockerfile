FROM debian:bullseye

EXPOSE 3306

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/init_database.sh /

RUN chmod +x /init_database.sh

ENTRYPOINT [ "/init_database.sh" ]

CMD [ "mariadbd" ]