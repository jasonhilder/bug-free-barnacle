# Use the official PHP 8 Apache image
FROM php:8-apache

# Install PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache modules
RUN a2enmod rewrite

# Expose port 8080
EXPOSE 8080

# Start Apache
CMD ["apache2-foreground"]
