FROM php:7.4-fpm-alpine

# Update package repository and install tzdata
RUN apk update && \
    apk add --no-cache tzdata

# Set timezone
ENV TZ="Asia/Dhaka"

# Install necessary dependencies and PHP extensions
RUN apk add --no-cache autoconf g++ make openssl-dev libpng-dev libzip-dev linux-headers && \
    docker-php-ext-install gd zip bcmath sockets mysqli pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install MongoDB extension
RUN pecl install mongodb && \
    docker-php-ext-enable mongodb

# Install Xdebug
RUN pecl install xdebug-3.1.6 && docker-php-ext-enable xdebug
COPY 90-xdebug.ini "${PHP_INI_DIR}"/conf.d
