FROM oraclelinux:8
LABEL authors="Jenkins Admin"
RUN yum install -y httpd \
zip \
unzip
ADD https://templatemo.com/download/templatemo_589_lugx_gaming /var/www/html/
WORKDIR /var/www/html

RUN rm -rf templatemo_589_lugx_gaming
CMD ["/usr/sbin/httpd", "-D",
EXPOSE 80
