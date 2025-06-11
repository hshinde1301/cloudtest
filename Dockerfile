FROM ubuntu:latest
MAINTAINER user@gmail.com
RUN apt install -y apache2 \
zip \
unzip
ADD https://templatemo.com/download/templatemo_589_lugx_gaming /var/www/html/
WORKDIR /var/www/html

RUN rm -rf templatemo_589_lugx_gaming
CMD ["/usr/sbin/httpd", "-D",
EXPOSE 80
