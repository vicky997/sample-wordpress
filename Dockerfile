FROM wordpress:latest

RUN rm -rf /usr/src/wordpress/*

ADD . /usr/src/wordpress/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
