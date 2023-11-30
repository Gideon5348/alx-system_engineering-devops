#!/usr/bin/ env bash
# Using puppet to connect without password

file { '/etc/ssh/ssh_config':
 ensure -> present,
 }

 file_line { 'Turn off passwd auth':
  path -> 
 }