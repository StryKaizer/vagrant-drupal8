# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin' ]
}

node default {
    class { 'apache' : }
    #class { 'lamp' : }
    #class { 'drupal' : }
}
