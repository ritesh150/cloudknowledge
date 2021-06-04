FROM centos
RUN yum install httpd -y
COPY https://freewebsitetemplates.com/preview/rehabilitation-yoga/index.html /var/www/html/
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80
