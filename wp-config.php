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
define( 'DB_NAME', 'bus' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

if ( !defined('WP_CLI') ) {
    define( 'WP_SITEURL', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] );
    define( 'WP_HOME',    $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] );
}



/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'RidvmtFruSXMST1Rz98uZvmbPulvTrngNIay4nFp3ANwIHJQk7BCi1mRXO9e3SG1' );
define( 'SECURE_AUTH_KEY',  'CFED6AVGYZpRuXd2sA5ZunVdHQb1m3Raz6Xv5lanyoMli97BUI3KkYp3IMk8CjL6' );
define( 'LOGGED_IN_KEY',    'hFU40aCLJ9Oi6mGePQM3VyosLxDOtZ5jy5bWcBrHe2x1jeWFH03SY3sPr8kd5Qpv' );
define( 'NONCE_KEY',        'GswEfRBql2vUS2OvbQliuLjt9KSstPAr1DgJwhZcOlsPFJIXYC6Z0CYrm0xH5sBM' );
define( 'AUTH_SALT',        'acddMO8ZoTOekk0Fs3RQOEaFG1skjNJxu8qymIWcjih5V46L4rkkSGvNaEMga8AP' );
define( 'SECURE_AUTH_SALT', 'JBAU83kYz5UKj5Y6D4v8rhczyxCk5ae7OA1q13irPY9t1UcN2XSBrsqQs2fqDdm9' );
define( 'LOGGED_IN_SALT',   'vOm7fNrq7PKqHlqRYU1Z52lsB3epZXoJ1r1TpWYwm0ER27sGyrXdnMansq57TnOQ' );
define( 'NONCE_SALT',       'lGOraQejLUnjC4lTdACA1vF5YNpDP0TO2hpoCI4QT4coRQsOWBkM0PhCXG9mxY4O' );

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
