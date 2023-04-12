FROM php:8.0-cli-alpine

COPY runtime/bootstrap /var/runtime/
COPY app/index.php /var/task/

RUN chmod -R 777 /var/runtime
RUN chmod -R 777 /var/task

ENTRYPOINT ["/usr/local/bin/php", "/var/runtime/bootstrap"]
CMD ["index"]