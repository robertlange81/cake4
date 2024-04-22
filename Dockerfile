FROM php:8.1-apache

# Installieren Sie Systemabhängigkeiten und PHP-Erweiterungen
RUN apt-get update && apt-get install -y libicu-dev \
    && docker-php-ext-install intl pdo pdo_mysql

# Aktivieren Sie Apache-Modul rewrite
RUN a2enmod rewrite

# Kopieren Sie die Anwendungsdateien in das Docker-Image
COPY . /var/www/html

# Erstellen Sie notwendige Verzeichnisse, wenn sie nicht existieren
RUN mkdir -p /var/www/html/tmp \
    && mkdir -p /var/www/html/logs

# Setzen Sie das Arbeitsverzeichnis
WORKDIR /var/www/html

# Setzen Sie Berechtigungen für CakePHP-Verzeichnisse
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html/tmp /var/www/html/logs
