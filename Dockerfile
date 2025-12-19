FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    nginx \
    php-fpm \
    php-mysql \
    && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/sites-available/default
COPY index.html /var/www/html/
COPY submit.php /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD service php8.1-fpm start && nginx -g 'daemon off;'

