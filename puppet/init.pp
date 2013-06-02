# Set default path for Exec calls
Exec {
path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ]
}


class { 'apache' : }


# Custom packages
package {
  ['git-core', 'nano']:
  ensure   => present,
#  require  => Exec['make_update'],
}


#exec { "clone_drupal_8":
#  command => "git clone --branch 8.x http://git.drupal.org/project/drupal.git /var/www/drupal8",
#  creates => "/var/www/drupal8"
#}

#exec { "update_drupal_repo":
#  command => "git clone --branch 8.x http://git.drupal.org/project/drupal.git /var/www/drupal8",
#  creates => "/var/www/drupal8"
#}

