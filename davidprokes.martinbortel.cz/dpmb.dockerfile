FROM php:7.2-apache

# COPY ./app /var/www/html
COPY ./davidprokes.martinbortel.cz/vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/html/
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install vim -y
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
