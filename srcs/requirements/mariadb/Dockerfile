FROM debian:buster
RUN apt-get update && apt-get install -y vim mariadb-server

COPY ./tools/script.sh /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod +x script.sh
EXPOSE 3306
CMD [ "/script.sh" ]
