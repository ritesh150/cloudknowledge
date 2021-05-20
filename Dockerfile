FROM centos-latest
MAINTAINER ritesh
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/studio-francesca.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip studio-francesca.zip 
RUN cp -rvf studiofrancesca-html-1.1/* .
RUN rm -rf studiofrancesca-html-1.1 studio-francesca.zip
CMD ["/usr/sbin/httpd", "-D" "FOREGROUND"]
EXPOSE 80
