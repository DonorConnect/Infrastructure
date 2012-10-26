#! /bin/bash

yum -y install unzip
rpm -ivh http://10.10.4.119/jdk-7u9-linux-x64.rpm
yum -y install mysql-server mysql
service mysqld start
wget http://10.10.4.119/apache-tomcat-7.0.32.zip
unzip apache-tomcat-7.0.32.zip
mv apache-tomcat-7.0.32 /usr/share/
wget http://10.10.4.119/tomcat -P /etc/init.d/
chmod 755 /etc/init.d/tomcat
chmod +x /usr/share/apache-tomcat-7.0.32/bin/*.sh
service tomcat start
service iptables stop
