
FROM amazonlinux:latest

#install
RUN yum install httpd -y

# configure
RUN echo "This is Artifactory Replication with Docker Image demo " > /var/www/html/index.html



CMD ["sh", "-c", "tail -f /dev/null"]

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


EXPOSE 80
