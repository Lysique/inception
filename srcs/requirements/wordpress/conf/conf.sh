#	Download wordpress
wp core download --allow-root

#	Generate config file and set up db
wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER \
--dbpass=$WORDPRESS_DB_PASS --dbhost=$MYSQL_HOST --allow-root

#	Install
wp core install --url=$DOMAIN_NAME/wordpress --title=$TITLE \
	--admin_user=$ADMIN_USER --admin_password=$ADMIN_PWD \
	--skip-email --admin_email=info@example.com --allow-root 

wp user create $WP_USER usr@example.com --role=author --user_pass=$WP_PASS --allow-root

/usr/sbin/php-fpm7 -F -R
