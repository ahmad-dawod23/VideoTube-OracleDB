FROM php:8.2-apache

WORKDIR /var/www/html
COPY index.php /var/www/html
COPY . /var/www/html


# Install Oracle Instantclient
RUN mkdir /opt/oracle \
    && cd /opt/oracle \
    && wget https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip \
    && wget https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-sdk-linux.x64-21.12.0.0.0dbru.zip \
    && unzip /opt/oracle/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip -d /opt/oracle \
    && unzip /opt/oracle/instantclient-sdk-linux.x64-21.12.0.0.0dbru -d /opt/oracle \
    && ln -s /opt/oracle/instantclient_21_12/libclntsh.so.12.1 /opt/oracle/instantclient_21_12/libclntsh1.so \
    && ln -s /opt/oracle/instantclient_21_12/libclntshcore.so.12.1 /opt/oracle/instantclient_21_12/libclntshcore1.so \
    && ln -s /opt/oracle/instantclient_21_12/libocci.so.12.1 /opt/oracle/instantclient_21_12/libocci1.so \
    && rm -rf /opt/oracle/*.zip
    
# Install Oracle extensions
RUN docker-php-ext-configure pdo_oci --with-pdo-oci=instantclient,/opt/oracle/instantclient_21_12,12.1 \
       && echo 'instantclient,/opt/oracle/instantclient_21_12/' | pecl install oci8 \
       && docker-php-ext-install \
               pdo_oci \
       && docker-php-ext-enable \
               oci8


EXPOSE 80