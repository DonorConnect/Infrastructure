#! /bin/bash

yum -y install unzip

#Install java
rpm -ivh http://10.10.4.119/jdk-7u9-linux-x64.rpm

#Install mysql if required
mysql --version|grep 5.5.28
MYSQL_VERSION=$?
if [ ! $MYSQL_VERSION -eq 0 ]
then
    echo "uninstalling wrong version of mysql if there is any..."
    yum erase mysql-server mysql mysql-libs -y
    echo "installing mysql version 5.5.28..."
    yum install http://10.10.4.119/MySQL-server-5.5.28-1.linux2.6.x86_64.rpm -y
    yum install http://10.10.4.119/MySQL-client-5.5.28-1.linux2.6.x86_64.rpm -y
else
    echo "mysql version 5.5.28 already installed!"
fi    
service mysql start
if [ ! -f /etc/init.d/tomcat ]
then
    echo "tomcat is not installed, installing..."
    wget http://10.10.4.119/apache-tomcat-7.0.32.zip
    unzip apache-tomcat-7.0.32.zip
    mv apache-tomcat-7.0.32 /usr/share/
    wget http://10.10.4.119/tomcat -P /etc/init.d/
    chmod 755 /etc/init.d/tomcat
    chmod +x /usr/share/apache-tomcat-7.0.32/bin/*.sh
else
    echo "tomcat already installed!"
fi
service tomcat start
service iptables stop
