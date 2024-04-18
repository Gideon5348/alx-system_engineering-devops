# Puppet manifest to fix Apache 500 error
#
# Description: Fixing issue causing Apache 500 error
#
# Author: Gideon Mutai

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
