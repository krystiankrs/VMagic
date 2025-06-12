# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/jammy64"
    ubuntu.vm.hostname = "ubuntu-vm"

    ubuntu.vm.network "private_network", ip: "192.168.56.10"

    ubuntu.vm.synced_folder "./shared", "/home/vagrant/shared"
    ubuntu.vm.synced_folder "./tests", "/home/vagrant/tests"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
    ubuntu.vm.provision "shell", inline: <<-SHELL
      echo "Ubuntu VM uruchomiona!"
    SHELL
  end

  config.vm.define "centos" do |centos|
    centos.vm.box = "generic/centos8"
    centos.vm.hostname = "centos-vm"

    centos.vm.network "private_network", ip: "192.168.56.11"

    centos.vm.synced_folder "./shared", "/home/vagrant/shared"
    centos.vm.synced_folder "./tests", "/home/vagrant/tests"
    centos.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
    centos.vm.provision "shell", inline: <<-SHELL
      echo "CentOS VM uruchomiona!"
    SHELL
  end

config.vm.define "opensuse" do |opensuse|
    opensuse.vm.box = "generic/opensuse42"
    opensuse.vm.hostname = "opensuse-vm"

    opensuse.vm.network "private_network", ip: "192.168.56.12"

    opensuse.vm.synced_folder "./shared", "/home/vagrant/shared"
    opensuse.vm.synced_folder "./tests", "/home/vagrant/tests"
    opensuse.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
    opensuse.vm.provision "shell", inline: <<-SHELL
      echo "openSUSE VM uruchomiona!"
    SHELL
  end

end

