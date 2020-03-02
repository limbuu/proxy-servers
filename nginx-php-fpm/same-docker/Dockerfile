FROM ubuntu:16.04
RUN apt-get update

## install nginx
RUN apt-get install nginx -y
## add nginx confguration

RUN rm -rf /etc/nginx/sites-enabled/default
ADD ./nginx.conf /etc/nginx/sites-enabled/default.conf

## Install php-fpm
RUN apt-get install php7.0-fpm -y

## Add php-fpm configuration
RUN rm -rf /etc/php/7.0/fpm/pool.d/www.conf
ADD ./php-fpm.conf /etc/php/7.0/fpm/pool.d/www.conf
RUN cat  /etc/php/7.0/fpm/pool.d/www.conf

## Add the php application 
ADD ./app/* /var/www/html/

## expose the ports for nginx and php-fpm
EXPOSE 80 

RUN whereis nginx
RUN whereis php-fpm7.0

## add strart script 
CMD /etc/init.d/php7.0-fpm start && nginx -g "daemon off;"
