#!/usr/bin/pup
# Ensure python3-pip is installed
package { 'python3-pip':
  ensure  => installed,
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'],
}

package { 'werkzeug':
  ensure   => '2.0.1',
  provider => 'pip',
  require  => Package['python3-pip'],
}
