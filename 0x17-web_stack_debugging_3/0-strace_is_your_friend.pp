# Puppet manifest to fix Apache 500 error
#
# Description: Fixing issue causing Apache 500 error
#
# Author: Gideon Mutai

# Example resource types to fix the issue
file { '/var/www/html/wp-settings.php':
  ensure  => file,
  content => file('/var/www/html/wp-settings.php'), # Read the content of wp-settings.php
  replace => 'true',                               # Replace the content when it matches
  notify  => Exec['restart_apache'],                # Notify restart_apache when changes are made
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

exec { 'restart_apache':
  command     => '/etc/init.d/apache2 restart',
  refreshonly => true,
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => Exec['restart_apache'],
}

