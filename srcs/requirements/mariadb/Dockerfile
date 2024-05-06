FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server
COPY ./setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh

ENTRYPOINT ["sh", "/tmp/setup.sh"]