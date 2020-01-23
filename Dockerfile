FROM gcr.io/google-appengine/php72

ENV DOCUMENT_ROOT=/var/www/app/public

COPY php.ini /opt/php72/lib/ext.enabled/php.ini

WORKDIR "/var/www/app/"