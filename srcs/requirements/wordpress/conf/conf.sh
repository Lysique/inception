#	Download wordpress
wp core download --allow-root

#	Generate config file and set up db
wp config create --dbname=$WORDPRESS_DB_HOST --dbuser=$WORDPRESS_DB_USR \
--dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$MYSQL_HOST --allow-root

#	Install
wp core install --url=$DOMAIN_NAME/wordpress --title=$TITLE \
	--admin_user=$ADMIN_USER --admin_password=$ADMIN_PWD \
	--skip-email --admin_email=info@example.com --allow-root \
	--path=\var\www\html

wp user create $WP_USR usr@example.com --role=author --user_pass=$WP_PWD --allow-root

/usr/sbin/php-fpm7 -F -R
