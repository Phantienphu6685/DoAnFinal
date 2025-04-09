FROM php:8.1-apache

# Cài mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Kích hoạt mod_rewrite nếu cần
RUN a2enmod rewrite

# Copy source code vào container
COPY . /var/www/html/
