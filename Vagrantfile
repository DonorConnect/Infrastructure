# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "centos"
  config.vm.provision :shell, :path => "go_setup.sh"
  config.vm.forward_port 8153, 8153
  config.vm.network :bridged
end
