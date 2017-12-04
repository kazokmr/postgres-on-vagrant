# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "postgresql"
  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.synced_folder ".","/home/vagrant/sync",disabled: true
  config.vm.provision "shell", inline: $script
end

$script = <<SCRIPT
  yum -y install epel-release
  yum -y install vim
  yum -y install git
  # install postgreSql Client
  yum -y install postgresql
  yum -y install docker
  # start docker and autoEnabe
  systemctl start docker.service
  systemctl enable docker.service
  docker run --name postgresql -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres --restart=always -d postgres:9.6
SCRIPT
