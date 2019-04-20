# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "77.77.77.7"
  config.vm.provision "shell", inline: <<-SHELL
   echo "installing dependencies"
   apt-get install -y update
   apt-get install -y upgrade
   apt-get install -y curl git nginx postgresql postgresql-contrib libpq-dev
   echo "configuring nginx"
   wget -qO- https://gist.githubusercontent.com/ishiikurisu/aef90280a9e3ef5c968a53ead37cb9f0/raw/517a8cf5425b1b2117a957d1c26edb439b1c4d4a/nginx.conf > /etc/nginx/nginx.conf
   systemctl start nginx
   echo "installing ruby"
   gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
   curl -sSL https://get.rvm.io | bash
   rvm install ruby
   echo "installing node"
   curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
   nvm install node
  SHELL
end
