# Sử dụng image PHP + Apache
FROM php:8.1-apache

# Copy mã nguồn vào thư mục web server
COPY . /var/www/html/

# Mở port
EXPOSE 80

# Kích hoạt mod_rewrite nếu cần
RUN a2enmod rewrite
