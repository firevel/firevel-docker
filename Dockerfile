FROM gcr.io/google-appengine/php73

ENV DOCUMENT_ROOT=/var/www/app/public

COPY php.ini /opt/php73/lib/ext.enabled/php.ini

RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O /bin/cloud_sql_proxy
RUN chmod +x /bin/cloud_sql_proxy
RUN mkdir /cloudsql

WORKDIR "/var/www/app/"

CMD ["cloud_sql_proxy", "-projects=${PROJECT_ID}", "-dir=/cloudsql"]