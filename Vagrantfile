# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "nzb" do |nzb|
    # Every Vagrant development environment requires a box. You can search for
    # boxes at https://atlas.hashicorp.com/search.
    nzb.vm.box = "ubuntu/trusty64"

    # Disable automatic box update checking. If you disable this, then
    # boxes will only be checked for updates when the user runs
    # `vagrant box outdated`. This is not recommended.
    # config.vm.box_check_update = false

    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.

    nzb.vm.network "forwarded_port", guest: 8080, host: 8080
    nzb.vm.network "forwarded_port", guest: 8081, host: 8081
    nzb.vm.network "forwarded_port", guest: 8181, host: 8181

    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    # config.vm.network "private_network", ip: "192.168.33.10"

    # Create a public network, which generally matched to bridged network.
    # Bridged networks make the machine appear as another physical device on
    # your network.
    # config.vm.network "public_network"

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    nzb.vm.synced_folder "./downloads", "/home/vagrant/Downloads", :create => true
    nzb.vm.synced_folder "./config", "/opt/config"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    # config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
    #   vb.memory = "1024"
    # end
    #
    # View the documentation for the provider you are using for more
    # information on available options.

    nzb.vm.provision "shell", path: "scripts/system.sh"
    nzb.vm.provision "shell", path: "scripts/sabnzbd.sh"
    nzb.vm.provision "shell", path: "scripts/sickbeard.sh"
    nzb.vm.provision "shell", path: "scripts/headphones.sh"
  end

  config.vm.define "plex" do |plex|
    plex.vm.box = "ubuntu/trusty64"

    plex.vm.network "forwarded_port", guest: 80, host: 80
    plex.vm.network "forwarded_port", guest: 32400, host: 32400

    plex.vm.provision "shell", path: "scripts/system.sh"
    plex.vm.provision "shell", path: "scripts/plex.sh"
  end
end
