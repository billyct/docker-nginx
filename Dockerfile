FROM nginx:alpine

ADD nginx.conf /etc/nginx/
COPY sites/*.conf /etc/nginx/sites-available/

#ARG PHP_UPSTREAM=php-fpm

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && rm /etc/nginx/conf.d/default.conf
    #&& echo "upstream php-upstream { server ${PHP_UPSTREAM}:9000; }" > /etc/nginx/conf.d/upstream.conf
VOLUME ["/var/log/nginx", "/var/www", "/etc/nginx/sites-available"]

CMD ["nginx"]

EXPOSE 80 443