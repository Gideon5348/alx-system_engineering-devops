# Puppet manifest to kill a process named 'killmenow'

exec { 'pkill':
  command => 'pkill killmenow',
  provider  => 'shell',
  returns => [0, 1],
}