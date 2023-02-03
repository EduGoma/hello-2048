#FROM httpd:2.4-alpine
#WORKDIR /opt/
#COPY ./public_html/ /usr/local/apache2/htdocs/
#EXPOSE 80
FROM nginx:1.23.3-alpine
WORKDIR /opt/
COPY ./public_html/ /usr/share/nginx/html/
EXPOSE 80