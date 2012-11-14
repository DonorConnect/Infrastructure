Infrastructure
==============

This readme contains the instructions for setting up the deployment environments for the Donors Connect web site.

Use `git clone https://github.com/DonorConnect/Infrastructure.git` to clone the repository.

You will need to install [vagrant](http://vagrantup.com/) to create the test servers.

Go Server Setup
------------------------

###Development Testing For Go

**NOTICE**: please modify the ip address of the file share server in the `Vagrantfile` to make it work for vagrant.

Navigate to the cloned folder in your terminal and run the following commands:

1. `vagrant up`
2. `vagrant ssh`
3. `sudo service iptables stop`
4. `ifconfig` (get the ip address of the go server vm instance)

Open the server ip at port 8153 in your browser to check the Go server is running.



###Server Setup For Go

**NOTE:** Modify the `ssh_setup.sh` script before running. You will need to change the ip addresses in the script to point to the correct servers.

ssh to the target environment, and then run the following commands:

1. `wget https://raw.github.com/DonorConnect/Infrastructure/master/GO_server_setup/go_setup.sh`
2. `chmod u+x go_setup.sh` (to give you permission to run the script)
3. `sudo ./ssh_setup.sh` (setup public key)
4. `sudo ./go_setup.sh [ip of file share server] ` (run the setup script, with your file share server as the argument)


**NOTE**: If you get a run time exception saying unknown host ... with a message saying GO-Server is not running, add the unknown host address to the list of known hosts by adding it to `/etc/hosts/`

To make sure Go-server is running, run `service go-server status`

QA/Showcase/Production Server Setup
----

###Development Testing For QA/Showcase/Production Environment

**NOTICE**: please modify the ip address of the file share server in the `Vagrantfile` to make it work for vagrant.

Navigate to the cloned folder in your terminal and run the following commands:

1. `vagrant up`
2. `vagrant ssh`
3. `sudo service iptables stop`
4. `ifconfig` (get the ip address of the go server vm instance)

Open the server ip at port 8080 in your browser to check tomcat is running.

###Server Setup For QA/Showcase/Production Environment

ssh to the target environment, and then run the following commands:

1. `wget https://raw.github.com/DonorConnect/Infrastructure/master/deployment_environment_setup/setUpQA.sh`
2. `chmod u+x setUpQA.sh` (to give you permission to run the script)
3. `sudo ./setUpQA.sh  [ip of file share server]` (run the setup script, with your file share server as the argument)

Open the server ip at port 8080 in your browser to check tomcat is running.