FROM centos:latest
MAINTAINER prash35782@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page5/nautica-09.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip nautica-09.zip
RUN cp -rvf nautica-09/* .
CMD ["/usr/sbin/httpd", "-D" ,"FOREGROUND"]
EXPOSE 80
