<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'db_user' );

/** Database password */
define( 'DB_PASSWORD', 'db_pwd' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'Hr|znIq!^Ta^%kcB*HhHn/E+6}c, H[K;.<W>WDB;Ef?aHu5((i@X)j-P%]1jp4X' );
define( 'SECURE_AUTH_KEY',   'izlJ05`P0V^EZ7*nHtWv}djd45%cAtSx:h(5kVw?!U1Dn>nJAI?.~_H8RjKFk&g_' );
define( 'LOGGED_IN_KEY',     'zY3bO)UOO>4%W<0K>3$#CiWs{*Z)Sn67i~.Y>D>U,Jq6pG^#Zu#W=8qN5k `n0lr' );
define( 'NONCE_KEY',         'ch>y35#6ZcJ?JT(NGcLna)~gOEJ0M4@<[UTB%x`)T;(z;7aN,:Wsj#IZ]3N9q8rb' );
define( 'AUTH_SALT',         '7}u,(Y=kqWf-;`,<@DD:D12vT 5FCGZWQBk~5G%vwDy#vY4c>(V0A5fwn04^<, 6' );
define( 'SECURE_AUTH_SALT',  'aZufa @PF+AbOqo|_nqnvg{mw:g]VYEcbo__9fw:6!_WH~g~Za{gMlgx:| 7REI)' );
define( 'LOGGED_IN_SALT',    ']r T>82ez-KWdL+)YA>f_9#pO>do.,F`73%E0y$@Q*zRzNo9[lq/`T/QLTIP~Uu=' );
define( 'NONCE_SALT',        '8`?<-*8BlfH)gz=w7.4b@Z|duCH)e(]Enh=or;Gvz8K>-o%W)^V}-~gB&lz:?Nbc' );
define( 'WP_CACHE_KEY_SALT', '>-4b=H?mo&mi0( L4M9o 9v>~.a3AcC(v<QE$yI>%#1n8#mK!WinX^Pr$VDs;_<$' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
