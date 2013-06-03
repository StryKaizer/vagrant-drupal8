# Set default path for Exec calls
#Exec {
#  path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ]
#}

## Update apt-get
#exec { 'make_update':
#  command => 'sudo apt-get update',
#}

### Install Apache
class { 'apache' : }

### Configure Vhost
apache::vhost { '192.168.33.10':
  serveraliases => [
    'drupal8.dev',
  ],
  port          => '80',
  docroot       => '/var/www/drupal',
}

### Install MySQL Client
#class { 'mysql': }
#
### Install MySQL Server
#class { 'mysql::server':
#  config_hash => { 'root_password' => 'drupal' }
#}
#
##class { 'mysql::php': }
#
#
#class { 'php':
#  service => 'apache',
#  require => Package['apache'],
#}
#
#php::module { 'php5-mysql': }
#php::module { 'php5-cli': }
#php::module { 'php5-curl': }
#php::module { 'php5-intl': }
#php::module { 'php5-mcrypt': }
#
#class { 'php::devel':
#  require => Class['php'],
#}



# Custom packages
#package {
#  ['git-core', 'nano']:
#  ensure   => present,
#  require  => Exec['make_update'],
#}


#exec { "clone_drupal_8":
#  command => "git clone --branch 8.x http://git.drupal.org/project/drupal.git /var/www/drupal8",
#  creates => "/var/www/drupal8"
#}

#exec { "update_drupal_repo":
#  command => "git clone --branch 8.x http://git.drupal.org/project/drupal.git /var/www/drupal8",
#  creates => "/var/www/drupal8"
#}

