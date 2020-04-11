FROM wordpress:latest

RUN rm -rf /var/www/html/*

ADD . /var/www/html/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
