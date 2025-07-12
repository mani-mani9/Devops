
#FROM nginx

#RUN apt update

#RUN rm -rf /usr/share/nginx/html/*
#COPY  index.html /usr/share/nginx/html/index.html

#EXPOSE 80

FROM php:8.1-apache

# Enable mysqli extension
RUN docker-php-ext-install mysqli

# Copy HTML and PHP files to Apache root
COPY . /var/www/html/



