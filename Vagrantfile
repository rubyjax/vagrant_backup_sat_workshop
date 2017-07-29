# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"

    ###########################################################################
    # Port forwarding
    # ------------------------------------------------------------------------
    # Forward [guest]-0.0.0.0:3000 -> [host]-localhost:3000
    ###########################################################################
    config.vm.network "forwarded_port", guest: 3000, host: 3000

    ###########################################################################
    # Prep Apt Repositories
    ###########################################################################
    config.vm.provision :shell, inline: "apt-get update"


    ###########################################################################
    # CLI/Runtimes
    ###########################################################################
    # Install Git
    config.vm.provision :shell, path: "vagrant/cli/git/install.sh"
    # Install RVM as the ubuntu user (allows for native `vagrant ssh` usage)
    config.vm.provision :shell, path: "vagrant/runtimes/rvm/install.sh", privileged: false


    ###########################################################################
    # Database configuration
    ###########################################################################
    # Install postgres 9.6
    config.vm.provision :shell, path: "vagrant/services/postgres/install.sh"
end
