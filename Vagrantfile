# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Box
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "192.168.33.10"

  # Shared folders
  config.vm.synced_folder "drupal/", "/var/www/drupal"

  # Tame virtualbox
  config.vm.provider :virtualbox do |vb|
    # Show GUI for debugging
    # vb.gui = true
    #   # Override memory settings
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # Puppetize!
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "init.pp"
    puppet.options = [
      '--verbose',
      '--debug',
    ]
  end

end
