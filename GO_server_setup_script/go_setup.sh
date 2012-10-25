#! /bin/bash

yum install unzip -y
yum install git -y

rpm -ivh http://10.10.4.119/jdk-7u9-linux-x64.rpm 
wget http://10.10.4.119/jdk-6u34-linux-x64.bin -O /usr/java/jdk-6u34-linuxjdk-6u34-linux-x64.bin
chmod u+x /usr/java/jdk-6u34-linux-x64.bin
cd /usr/java
./jdk-6u34-linux-x64.bin
rm latest
ln -s /usr/java/jdk1.6.0_34 latest

#Install Go Server and its config
mkdir /etc/go
curl -o /etc/go/cruise-config.xml https://raw.github.com/DonorConnect/Infrastructure/master/GO_server_setup_script/cruise-config.xml 
rpm -ivh http://10.10.4.119/go-server-12.3.2-15897.noarch.rpm

sleep 30 # wait for go server to start up.

# Install GO Agent
rpm -ivh http://10.10.4.119/go-agent-12.3.2-15897.noarch.rpm
service go-agent restart
