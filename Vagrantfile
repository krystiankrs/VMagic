# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/jammy64"
    ubuntu.vm.hostname = "ubuntu-vm"

    # Ustaw statyczny prywatny adres IP
    ubuntu.vm.network "private_network", ip: "192.168.56.10"

    ubuntu.vm.synced_folder "./shared", "/home/vagrant/shared"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
    ubuntu.vm.provision "shell", inline: <<-SHELL
      echo "Ubuntu VM uruchomiona!"
    SHELL
  end

  config.vm.define "centos" do |centos|
    centos.vm.box = "centos/7"
    centos.vm.hostname = "centos-vm"

    centos.vm.network "private_network", ip: "192.168.56.11"

    centos.vm.synced_folder "./shared", "/home/vagrant/shared"
    centos.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
    centos.vm.provision "shell", inline: <<-SHELL
      echo "CentOS VM uruchomiona!"
    SHELL
  end

  config.vm.define "rocky" do |rocky|
    rocky.vm.box = "rockylinux/8"
    rocky.vm.hostname = "rocky-vm"

    rocky.vm.network "private_network", ip: "192.168.56.12"

    rocky.vm.synced_folder "./shared", "/home/vagrant/shared"
    rocky.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
    rocky.vm.provision "shell", inline: <<-SHELL
      echo "Rocky Linux VM uruchomiona!"
    SHELL
  end

end

