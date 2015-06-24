#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# The recipe is as follows - 
# 1 - get .gz file from remote url
# 2 - gunzip the file
# 3 - convert the deflated file to a tar
# 4 - unpack the tar
# 5 - move unpacked contents to /usr/local/
# 6 - add logic to create JAVA_HOME variable in path in ~/.profile
# 7 - restart the shell

bash "java" do
	code <<-EOH
		wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67-linux-x64.tar.gz
		tar xfz jdk-7u67-linux-x64.tar.gz
		mv jdk1.7.67 /usr/local/
		echo "export JAVA_HOME=/usr/local/jdk1.7.67" >> /etc/profile
		echo "export PATH=$PATH:$JAVA_HOME/bin" >> /etc/profile
	EOH
end
