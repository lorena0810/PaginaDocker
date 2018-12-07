FROM ubuntu:16.04
RUN  apt-get update -y
RUN apt-get install apache2 -y
RUN service apache2 restart
COPY --chown=www-data:www-data . /var/www/html
ENTRYPOINT apache2ctl -D FOREGROUND
