Infrastructure
==============

Infrastructure for the donor connect app

Development Testing For Go
==========================

* git clone https://github.com/DonorConnect/Infrastructure.git
* cd into the cloned folder
* vagrant up
* vagrant ssh 
* sudo service iptables stop
* ifconfig to get the ip address
* hit the ip:8153 from your browser

Setting Up a Brand New Go Instance on A Server VM
=================================================
* ssh into the target environment
* wget go_setup from https://raw.github.com/DonorConnect/Infrastructure/master/go_setup.sh
* as root run the setup


