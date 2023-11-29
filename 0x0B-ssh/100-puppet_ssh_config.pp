# 100-puppet_ssh_config.pp

file_line { 'Declare identity file':
  path  => '/home/gideon/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^100.26.157.83$',
}