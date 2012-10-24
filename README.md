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
* chmod u+x go_setup.sh (to give you permission to run the script)
* as root run the setup
* NOTE: If you get a run time exception saying unknown host ... with a message saying GO-Server is not running add the unknown host address to the list of known hosts by adding it to /etc/hosts/
* To check wether the Go-server is running do: service go-server status 


