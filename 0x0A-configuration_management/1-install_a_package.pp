#!/usr/bin/pup
# Puppet manifest to install Flask version 2.1.0 using pip3

class { 'python':
  version => 'system',
}

package { 'python3-pip':
  ensure => installed,
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'],
}
