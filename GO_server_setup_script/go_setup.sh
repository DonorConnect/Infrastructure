#! /bin/bash

yum install unzip -y
yum install git -y

rpm -ivh http://10.10.4.119/jdk-7u9-linux-x64.rpm 
wget http://10.10.4.119/jdk-6u34-linux-x64.bin
chmod u+x jdk-6u34-linux-x64.bin
exec jdk-6u34-linux-x64.bin
mv jdk-6u34-linux-x64 /usr/java
rm latest
ln -s latest /usr/java/jdk1.6.0_09

#Install Go Server and its config
mkdir /etc/go
curl -o /etc/go/cruise-config.xml https://raw.github.com/DonorConnect/Infrastructure/master/GO_server_setup_script/cruise-config.xml 
rpm -ivh http://10.10.4.119/go-server-12.3.2-15897.noarch.rpm

sleep 30 # wait for go server to start up.

# Install GO Agent
rpm -ivh http://10.10.4.119/go-agent-12.3.2-15897.noarch.rpm
service go-agent restart
