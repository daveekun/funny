FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y nginx
RUN adduser www-data -D -s /sbin/nologin -G www-data -g www-data 
RUN chown www-data /etc/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]