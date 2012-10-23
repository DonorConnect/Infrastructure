#! /bin/bash

yum install unzip -y
yum install git -y
service iptables stop
rpm -ivh http://10.10.4.119/jdk-7u9-linux-x64.rpm 
rpm -ivh http://10.10.4.119/go-server-12.3.2-15897.noarch.rpm
sleep 30
rpm -ivh http://10.10.4.119/go-agent-12.3.2-15897.noarch.rpm
#while [true]
#if(curl -I  --stderr /dev/null http://localhost:8153/go/home | head -1 | cut -d' ' -f2 != 200)
 # sleep 1000
#else
 # break
#done
service go-agent start

