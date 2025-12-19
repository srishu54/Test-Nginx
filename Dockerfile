FROM centos:9

ARG HTTP_PROXY=http://10.10.13.207:3128
ARG HTTPS_PROXY=http://10.10.13.207:3128

RUN dnf -y update && \
    dnf -y install \
        nginx \
        php \
        php-fpm \
        php-mysqlnd \
    && dnf clean all

COPY nginx.conf /etc/nginx/sites-available/default
COPY index.html /var/www/html/
COPY submit.php /var/www/html/

RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80

CMD php-fpm && nginx -g 'daemon off;'

