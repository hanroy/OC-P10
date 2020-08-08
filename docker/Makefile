install: configure

configure:

	@echo "�~Z~Y�~O Configuring Wordpress parameters..."

	wp --allow-root core install \
                --url=http://52.59.214.248/ \
                --title=myblog \
                --admin_user=admin \
                --admin_password=wordpress \
                --admin_email=h4nr0y@gmail.com

	wp --allow-root option update siteurl "http://52.59.214.248/"
	wp --allow-root rewrite structure "/blog/%postname%/"
	wp --allow-root plugin install wordpress-importer --activate
	wp --allow-root plugin install amazon-web-services --activate
	wp --allow-root plugin update --all
	wp --allow-root theme update --all
	wp --allow-root theme activate twentynineteen
	wp --allow-root post delete 1 --force
	wp --allow-root import /scripts/wpress.xml --authors=create
