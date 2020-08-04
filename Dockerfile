FROM gcr.io/google-appengine/php73:staging

ENV DOCUMENT_ROOT=/var/www/app/public

COPY php.ini /opt/php73/lib/ext.enabled/php.ini

WORKDIR "/var/www/app/"