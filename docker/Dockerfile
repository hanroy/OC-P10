FROM wordpress:cli

USER root
RUN apk add --no-cache make

ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait



ADD Makefile entrypoint.sh wpress.xml /scripts/
RUN chmod +x /scripts/entrypoint.sh

RUN chown -R www-data:www-data /var/www/html


ENTRYPOINT [ "/scripts/entrypoint.sh" ]
#USER 33:33
CMD ["wp", "shell"]
