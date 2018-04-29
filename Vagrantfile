# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

# https://github.com/BerlinVagrant/vagrant-dns
# Install DNS plugin: vagrant plugin install vagrant-dns
# Before running vagrant up, run:
#   vagrant dns --install
# To insert hostnames into /etc/resolvers

Vagrant.configure("2") do |config|

  config.vm.define "db" do |db|

    db.vm.box = "mvbcoding/awslinux"
    db.vm.network "private_network", ip: "10.0.0.3"

    db.dns.tld = ".vagrant"
    db.vm.hostname = "dynamodb"
    db.dns.patterns = [/^dynamodb.vagrant$/]

    db.vm.provider "virtualbox" do |vm_config, override|
      vm_config.customize [
        "modifyvm", :id,
        "--natdnshostresolver1", "on",
        # some systems also need this:
        # "--natdnshostresolver2", "on"
      ]
    end

  end

end
