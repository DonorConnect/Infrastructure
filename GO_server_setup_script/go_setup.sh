#! /bin/bash

#Install Unzip and Git
yum install unzip -y
yum install git -y

#Install MySQL and start service
yum install http://10.10.4.119/MySQL-server-5.5.28-1.linux2.6.x86_64.rpm -y
yum install http://10.10.4.119/MySQL-client-5.5.28-1.linux2.6.x86_64.rpm -y
service mysqld start

#Install Java JDK v6 and v7
rpm -ivh http://10.10.4.119/jdk-7u9-linux-x64.rpm 
wget http://10.10.4.119/jdk-6u34-linux-x64.bin -O /usr/java/jdk-6u34-linux-x64.bin
chmod u+x /usr/java/jdk-6u34-linux-x64.bin
cd /usr/java
./jdk-6u34-linux-x64.bin
rm latest
ln -s /usr/java/jdk1.6.0_34 latest

#Install GO-Server and its config
mkdir -p /etc/go
curl -o /etc/go/cruise-config.xml https://raw.github.com/DonorConnect/Infrastructure/master/GO_server_setup_script/cruise-config.xml 
rpm -ivh http://10.10.4.119/go-server-12.3.2-15897.noarch.rpm

sleep 30 # wait for go server to start up.

# Install GO-Agent
rpm -ivh http://10.10.4.119/go-agent-12.3.2-15897.noarch.rpm
service go-agent restart
