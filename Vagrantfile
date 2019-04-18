# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "77.77.77.7"
  config.vm.provision "shell", inline: <<-SHELL
   apt-get install -y update
   apt-get install -y upgrade
   apt-get install -y curl git
   gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
   curl -sSL https://get.rvm.io | bash
   source /etc/profile.d/rvm.sh
   rvm install ruby
  SHELL
end
