# Possibilita

Let's make this happen.

## Installation

First of all, install all requirements:

- [Curl](https://curl.haxx.se)
- [Ruby](https://rvm.io/rvm/install)

Now, in root folder of this repository, run the following commands to install the dependencies and set
the database up:

``` sh
bundle install
```

## Vagrant

If you don't want to mess up with your system, you can use [Vagrant](https://www.vagrantup.com) to run the application inside a virtual machine:

``` sh
vagrant up --provision
vagrant ssh
# we are now inside an ubuntu machine
cd /vagrant
# ... now run the installation and server commands
```
