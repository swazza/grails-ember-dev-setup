#!/bin/bash
# Script to install java
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67-linux-x64.tar.gz
tar xfz jdk-7u67-linux-x64.tar.gz
mv jdk1.7.0_67 /usr/local/
echo "export JAVA_HOME=/usr/local/jdk1.7.0_67" >> /etc/profile
echo "export PATH=$PATH:$JAVA_HOME/bin" >> /etc/profile