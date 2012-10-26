# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "centos"
  config.vm.box_url = "http://10.10.4.119/CentOS-6.3-x86_64-minimal.box"
  config.vm.provision :shell, :path => "go_setup.sh"
  config.vm.network :bridged
end
