FROM wordpress:latest

# Plugins & Media
RUN sudo mkdir -p /var/www/html/wp-content/plugins
RUN sudo mkdir -p /var/www/html/wp-content/uploads

RUN sudo chown -R www-data:www-data /var/www

RUN sudo find /var/www/ -type d -exec chmod 0755 {} \;
RUN sudo find /var/www/ -type f -exec chmod 644 {} \;
