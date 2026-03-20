FROM ubuntu:latest

LABEL maintainer="Twoje Imię Nazwisko <twoj@email.com>"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]