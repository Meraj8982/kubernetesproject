FROM centos:latest
MAINTAINER meraj8982@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/pages258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury  loxury.zip
CMD ["/usr/sbin/httpd", "D", FOREFROUND"]
EXPOSE 80
