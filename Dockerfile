FROM centos:latest
RUN yum install httpd -y
ADD https://freewebsitetemplates.com/preview/rehabilitation-yoga/index.html /var/www/html/
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80
