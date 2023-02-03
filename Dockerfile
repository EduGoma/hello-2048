FROM httpd:2.4-alpine
WORKDIR /opt/
COPY ./public_html/ /usr/local/apache2/htdocs/
EXPOSE 80
