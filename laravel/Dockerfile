# Use the official PHP 7.4 image
FROM php:7.4

# Set the working directory in the container
WORKDIR /var/www/html

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    libzip-dev

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql zip

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Display PHP version and Composer version
RUN php -v && composer --version

# Set up Composer environment variables
ENV COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_HOME=/composer

# Add Composer's global bin directory to the system PATH
ENV PATH="${PATH}:/composer/vendor/bin"

# Run Composer's self-update and clear cache
RUN composer self-update --1

# Specify the command to run on container start
CMD ["php", "-S", "0.0.0.0:9000", "-t", "public"]

# Expose port 8000
EXPOSE 9000
