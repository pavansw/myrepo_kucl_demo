FROM ubuntu:latest

RUN apt update; apt install apache2 -y; apt-get update -y ; useradd pavan

COPY index.html /var/www/html/

WORKDIR /code

COPY . .

EXPOSE 80

VOLUME /var/www/html

CMD ["apache2ctl","-D","FOREGROUND"]
