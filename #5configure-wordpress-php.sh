#!/bin/bash

# Enter into the WordPress directory
cd /var/www/html/wordpress

# Create wp-config.php file from the sample file
mv wp-config-sample.php wp-config.php

# Edit wp-config.php using nano editor
nano wp-config.php

# Add the necessary MySQL settings
echo "
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpressdb' );
/** MySQL database username */
define( 'DB_USER', 'wordpress' );
/** MySQL database password */
define( 'DB_PASSWORD', 'SNHU_2020' );
/** MySQL hostname */
define( 'DB_HOST', 'localhost' );
/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );
/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
define('FS_METHOD', 'direct');
" >> wp-config.php

echo "wp-config.php file edited and saved."

# If using nano, save and exit
if command -v nano &> /dev/null; then
    echo "Ctrl+X to exit, then 'Y' to save changes."
fi
