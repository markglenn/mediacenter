# -*- mode: ruby -*-
# vi: set ft=ruby :

FileUtils.cp 'vagrant_config_example.rb', 'vagrant_config.rb' unless File.exists?('vagrant_config.rb')
require './vagrant_config'

Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = HOSTNAME

  config.vm.network "forwarded_port", guest: 5050, host: 5050 if USE_COUCHPOTATO
  config.vm.network "forwarded_port", guest: 8080, host: 8080 if USE_SABNZBD
  config.vm.network "forwarded_port", guest: 8081, host: 8081 if USE_SICKBEARD
  config.vm.network "forwarded_port", guest: 8181, host: 8181 if USE_HEADPHONES
  config.vm.network "forwarded_port", guest: 32400, host: 32400 if USE_PLEX

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

  # Holds the configuration scripts for provisioning
  config.vm.synced_folder "./config", "/opt/config"

  config.vm.synced_folder DOWNLOAD_PATH,  VM_DOWNLOAD_PATH, :create => true
  config.vm.synced_folder MUSIC_PATH,     VM_MUSIC_PATH,    :create => true
  config.vm.synced_folder TV_PATH,        VM_TV_PATH,       :create => true
  config.vm.synced_folder MOVIE_PATH,     VM_MOVIE_PATH,    :create => true

  # Configure virtualbox
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = VM_MEMORY
    vb.cpus = VM_CPUS
  end

  config.vm.provision "shell", path: "scripts/system.sh"
  config.vm.provision "shell", path: "scripts/sabnzbd.sh" if USE_SABNZBD
  config.vm.provision "shell", path: "scripts/sickbeard.sh" if USE_SICKBEARD
  config.vm.provision "shell", path: "scripts/headphones.sh" if USE_HEADPHONES
  config.vm.provision "shell", path: "scripts/couchpotato.sh" if USE_COUCHPOTATO
  config.vm.provision "shell", path: "scripts/plex.sh" if USE_PLEX
end
