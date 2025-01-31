FROM php:7.4-apache

WORKDIR /var/www/html

COPY . .
COPY ./vhost.conf /etc/apache2/sites-available/000-default.conf
COPY ./certs/localhost.pem /etc/apache2/ssl/localhost.pem
COPY ./certs/localhost-key.pem /etc/apache2/ssl/localhost-key.pem

RUN chmod 775 -R /var/www/html && chown -R www-data:www-data /var/www/html && a2enmod rewrite && a2enmod ssl

EXPOSE 80
EXPOSE 443