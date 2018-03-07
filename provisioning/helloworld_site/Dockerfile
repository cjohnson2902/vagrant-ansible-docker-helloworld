FROM library/alpine:latest

RUN addgroup -g 1000 -S www-data \
 && adduser -u 1000 -D -S -G www-data www-data

RUN apk add --no-cache nginx
ADD nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /run/nginx

RUN mkdir -p /var/www/site
ADD index.html /var/www/site/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]