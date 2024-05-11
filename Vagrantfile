# -*- mode: ruby -*-
# vi: set ft=ruby :

ver = ENV["VER"]

Vagrant.configure("2") do |config|
  config.vm.box = "nixbox/nixos"
  config.vm.box_version = ver.to_s

  config.disksize.size = '10GB'

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "8192"
  end

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", privileged: false, inline: <<-'SHELL'
    SCRIPTNAME=scripts/compile-grammar.sh
    chmod +x /vagrant/$SCRIPTNAME
    /vagrant/$SCRIPTNAME
  SHELL
end
