FROM rockylinux:9

ARG HTTP_PROXY=http://10.10.13.207:3128
ARG HTTPS_PROXY=http://10.10.13.207:3128

RUN dnf -y update && \
    dnf -y install \
        nginx \
        php \
        php-fpm \
        php-mysqlnd \
    && dnf clean all
        php-mysqlnd && \
    dnf clean all

# Create PHP-FPM runtime directory (CRITICAL FIX)
RUN mkdir -p /run/php-fpm && \
    chown -R nginx:nginx /run/php-fpm

# Copy configs and app files
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
COPY submit.php /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80

# Start both services
CMD php-fpm && nginx -g 'daemon off;'

