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
define( 'DB_NAME', 'anolivei' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'anolivei' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define('AUTH_KEY',         'ZdWpz6DqZ3YyQH:`W#!e?Cw5&#A[x*~;>l)~c(4]Sq43i&3V|4=7@~OoS{+)m-V[');
define('SECURE_AUTH_KEY',  'se`Fkm8iUq2gg15#X?f[b]p{98.mpi_|K]W$I~eZR~8AfZf-pdKdGqVfnn$?%SS<');
define('LOGGED_IN_KEY',    ':0qvoS*P~c+-YK$rO4q0;4}Pb=pZjJW@ufu~SFT u(;)JK,;A0p9xOU T$ `EZ[m');
define('NONCE_KEY',        '%u1-~_kw:TiA3SVpS>/g:fTxYs_[zCIY`w+e>Sw$o+Z-kNaGTA>RA4(t*}UHO|?Y');
define('AUTH_SALT',        'Hdplp@3`Vg8xl^99cqs6e|[|x.vzT+rYI|ldO1Yb{)^|(0US>LA9w%|K15$(OUA-');
define('SECURE_AUTH_SALT', 'riEa<eRP_!OMeNPc4~Ge,NfU8o(W:qV>jz=ygs<jw@lA`Eelrt`VzZxS3:xjLGZ9');
define('LOGGED_IN_SALT',   '#[4<h^*78+460b(6?7;H0&>+p_0^m)wel:B07DZjivs$)e.(ho%bKF#Ha@t9fn2|');
define('NONCE_SALT',       '#Vl ;7,/CdTrun_-M7WN(biS[rjqES<|Ae)+>r?Deo|!Z]V_D[)n{qn1=WGthr&m');

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
