FROM debian:bullseye

RUN apt update -y \
	&& apt upgrade -y \
	&& apt install -y \
		php8.1 php8.1-fpm php-mysql mariadb-client

COPY conf/www.conf /etc/php/8.1/fpm/pool.d
COPY tools/configurer.sh /usr/local/bin/configurer.sh
WORKDIR /var/www/wordpress

ENTRYPOINT ["sh", "/tmp/configurer.sh"]