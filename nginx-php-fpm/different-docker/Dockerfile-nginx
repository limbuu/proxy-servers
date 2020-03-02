FROM ubuntu:16.04

RUN apt-get update

# install nginx
RUN apt-get install nginx -y

## add custom nginx conf here
RUN rm -rf /etc/nginx/sites-enabled/default
ADD ./nginx.conf /etc/nginx/sites-enabled/default.conf

## expose port
EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
