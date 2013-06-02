vagrant-drupal8
===============

Work in progress, not ready for use atm


Vagrant box for Drupal 8 contributing...

Offers an up-to-date Drupal 8 version every time a box is created the first time.
Will stay at that version. Destroy box or update manually if you want latest version when outdated.

#### Supported version
- Vagrant 1.2.2 
- Virtualbox 4.2.12
Other versions might work, although untested


#### Installation
    $ git clone --recursive https://github.com/StryKaizer/vagrant-drupal8.git
    $ cd vagrant-drupal8
    $ vagrant up

Drupal 8 instance will be available at http://192.168.33.10/ once box is ready.
Optionally you could add following line in your hostsfile to make the Drupal 8 instance available at http://drupal8.dev/

    drupal8.dev    192.168.33.10