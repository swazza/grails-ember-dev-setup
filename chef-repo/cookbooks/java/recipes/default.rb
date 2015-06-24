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

# bash "java" do
# 	code <<-EOH
		
# 	EOH
# end

# Using apt_get package for now - this has to be removed
apt_package "openjdk-7-jre-headless" do
	action :install
end

bash "JAVA_HOME" do
	code <<-EOH
		echo "export JAVA_HOME=/usr/bin/java" >> /etc/profile
		echo "export PATH=$PATH:$JAVA_HOME/bin" >> /etc/profile
	EOH
end
