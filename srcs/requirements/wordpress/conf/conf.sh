sleep 5
if [ ! -f "wp-config.php" ]; then
	#	Download wordpress
	echo core download
	wp core download --allow-root

	echo config
	#	Generate config file and set up db
	wp config create --dbname=$WORDPRESS_DB_NAME \
	--dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASS \
	--dbhost=$WORDPRESS_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root

	echo core install
	#	Install
	wp core install --url=$URL --title=$TITLE \
		--admin_user=$ADMIN_USER --admin_password=$ADMIN_PWD \
		--skip-email --admin_email=$ADMIN_MAIL --allow-root 

	echo user create
	wp user create $WP_USER_NAME $WP_USER_MAIL --role=author \
	   --user_pass=$WP_USER_PASS --allow-root
fi

/usr/sbin/php-fpm7 -F -R
