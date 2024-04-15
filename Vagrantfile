# -*- mode: ruby -*-
# vi: set ft=ruby :

ver = ENV["VER"]

Vagrant.configure("2") do |config|
  config.vm.box = "nixbox/nixos"
  config.vm.box_version = ver.to_s

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "4096"
  end

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", privileged: false, inline: <<-'SHELL'
    cd /vagrant/
    echo "statix check &&\
      nix flake check --impure &&\
      cp \$(nix build --impure --no-link --print-out-paths)/* ./syntaxes/" |\
      nix-shell --run bash
  SHELL
end
