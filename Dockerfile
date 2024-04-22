FROM php:8.1-apache

# Installieren Sie Abhängigkeiten und PHP-Erweiterungen
RUN apt-get update && apt-get install -y \
        libicu-dev \
        git \
        zip \
        unzip \
    && docker-php-ext-install intl pdo_mysql

# Aktivieren Sie Apache-Modul rewrite
RUN a2enmod rewrite

# Installieren Sie Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Konfigurieren Sie Xdebug (passen Sie die Werte nach Ihren Bedürfnissen an)
RUN { \
        echo 'xdebug.mode=debug'; \
        echo 'xdebug.start_with_request=yes'; \
        echo 'xdebug.client_host=host.docker.internal'; \
        echo 'xdebug.client_port=9003'; \
        echo 'xdebug.log=/tmp/xdebug.log'; \
        echo 'xdebug.idekey=VSCODE'; \
    } > /usr/local/etc/php/conf.d/xdebug.ini

# Kopieren Sie die Anwendungsdateien in das Docker-Image
COPY . /var/www/html

WORKDIR /var/www/html
