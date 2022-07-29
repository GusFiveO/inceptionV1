FROM debian:buster

RUN apt update -y && apt install mariadb-client mariadb-server gettext-base -y

COPY config/init.sql /var/.
COPY config/script.sh /var/.
COPY config/php-fpm.conf /etc/mariadb.conf.d/server.cnf

CMD ["/bin/sh", "/var/script.sh"]
