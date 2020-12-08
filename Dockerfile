# Start writing your Dockerfile easily
FROM centos:latest

RUN install update -y httpd \
    zip \   
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/soft-team.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip soft-team.zip
RUN c- -rvf bootstrap-agency-template/* .
CMD ["/usr/sbin/httpd", "-D" "FORGROUND"] 
EXPOSE 80