FROM php:7.2-apache
WORKDIR /var/www/html
COPY index.php /var/www/html
COPY . /var/www/html
RUN docker-php-ext-install mysqli pdo pdo_mysql
EXPOSE 80