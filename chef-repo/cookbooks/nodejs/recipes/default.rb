#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# bash resource to install nodejs
bash "nodejs" do
	code <<-EOH
		wget http://nodejs.org/dist/v0.12.5/node-v0.12.5-linux-x64.tar.gz
		sudo tar -C /usr/local --strip-components 1 -xzf node-v0.12.5-linux-x64.tar.gz 
		rm node-v0.12.5-linux-x64.tar.gz 
	EOH
end