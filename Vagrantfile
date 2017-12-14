# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "postgresql"
  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.synced_folder "ansible","/ansible",:mount_options => ['dmode=775','fmode=664']
  config.vm.provision "shell", :path => "scripts/provision.sh"
  
  # setting for proxy
  if Vagrant.has_plugin?("vagrant-proxyconf") && ENV['PROXY_URL']
    config.proxy.http = ENV['PROXY_URL']
    config.proxy.https = ENV['PROXY_URL']
  end
end
