FROM centos:7
MAINTAINER swapnil.batavale@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
WORKDIR /var/www/html/
RUN echo "welcome to jenkins pipeline" > index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
