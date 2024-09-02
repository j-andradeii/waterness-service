# Base Image
FROM php:8.2-fpm

# Install required system packages and PHP extensions
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-install pdo_mysql zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Set working directory
WORKDIR /var/www/html

# Copy existing application directory contents
COPY . /var/www/html

# Set ownership and permissions for the application files
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html

# Configure Composer settings
RUN composer config --global process-timeout 600
