#
# Cookbook Name:: ember-cli
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "ember-cli" do
	code <<-EOH
		npm install -g ember-cli
	EOH
end