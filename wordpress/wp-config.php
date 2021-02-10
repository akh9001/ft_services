<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'database_name_here' );

/** MySQL database username */
define( 'DB_USER', 'username_here' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password_here' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'u|xvMN&noA_k8?AYu5.K}HG+)BH$wcwY%@<Q|R&o]jqnPm3{Wr<{mPh57w.|%Vde' );
define( 'SECURE_AUTH_KEY',  'i+Xfd[39:ejP7n+ZE^IG;|P[b|;s|2X Cc|hM|]IA)|-u/o}<uj-ATl,G`zg)cWr' );
define( 'LOGGED_IN_KEY',    'wa-RuIK1-n$g?H<V8wo(nA+|R Nd|JY,0Pwnz_s3F6bY[~N?-|x!A[e@(sF`f 7x' );
define( 'NONCE_KEY',        '/,tt,0?8 5dlu[?88# &p+_tD3?SH2m3^?p/Qo*brNp-7Jw<@M70XE,Hlw9A eB`' );
define( 'AUTH_SALT',        'B@Ud#;TTM>rqI;.V@~>nmMXVxx|f:3t:K=C8g3uUXE.e,,z7[k#HZB>WfN.5__&z' );
define( 'SECURE_AUTH_SALT', 'qg~}+FgBc*CVaq0iys|n.!-szQM7$viyqq^6fu7*!!Xj[cTU_KW(oS%&0nP[DZg?' );
define( 'LOGGED_IN_SALT',   '?Ck=;-I.rxX7p^W -a5v{9Ue8-cy*(;eH@-Bp]V94pFy-f|bzLgh|H-kp+@}oy-u' );
define( 'NONCE_SALT',       'dla&atJ70?Q,J8>}B/h*P=5[J?g9xPba=&W1;dQogf q[jG*]|jj%<Ya.-1>&@KJ' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
