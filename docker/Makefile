install: configure

configure:

	@echo "�~Z~Y�~O Configuring Wordpress parameters..."

	wp --allow-root core install \
                --url=http://localhost/ \
                --title=myblog \
                --admin_user=admin \
                --admin_password=wordpress \
                --admin_email=example@mail.com

	wp --allow-root option update siteurl "http://localhost/"
	wp --allow-root rewrite structure "/blog/%postname%/"
	wp --allow-root plugin install wordpress-importer --activate
	wp --allow-root plugin install amazon-web-services --activate
	wp --allow-root plugin install amazon-s3-and-cloudfront --activate
	wp --allow-root plugin update --all
	wp --allow-root theme update --all
	wp --allow-root theme activate twentynineteen
	wp --allow-root post delete 1 --force
	wp --allow-root media import /scripts/1.png
	wp --allow-root import /scripts/wpress.xml --authors=create
	#wp --allow-root media import /scripts/1.png --title="WordPress on AWS: you are holding it wrong"  --featured_image
