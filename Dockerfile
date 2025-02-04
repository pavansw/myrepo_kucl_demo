FROM ubuntu:latest

RUN apt update;apt install apache2 -y

COPY index.html /var/www/html/

EXPOSE 80

VOLUME /var/www/html
