FROM registry.access.redhat.com/ubi8/ubi8:3
ENV DOCROOT /var/www/html
RUN yum -y install httpd && \
    echo "IT WORKS" > ${DOCROOT}/index.html
EXPOSE 80
CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
