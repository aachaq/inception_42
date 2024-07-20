FROM debian:buster

RUN apt-get update
RUN apt install php-fpm php-mysql -y
RUN apt install curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp 

COPY ./conf/wp-config.php /
COPY ./tools/wordpress.sh /

RUN chmod +x wordpress.sh
EXPOSE 9000

CMD [ "/wordpress.sh" ]