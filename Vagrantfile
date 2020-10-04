# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"

  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./share_data", "/share_data",
    :mount_options => ['dmode=777', 'fmode=666']

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
  end  

  config.vm.provision "shell", inline: <<-SHELL
    yum -y install epel-release
    yum -y install ansible
  SHELL
end
