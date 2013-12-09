#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, Andrei Cusnir
#
# All rights reserved - Do Not Redistribute
#

package node["package_name"] do
	action :install
end

service node["service_name"] do
	action [:start, :enable]
end

template "#{node["document_root"]}/index.html" do
	source "index.html.erb"
	mode "0644"
end

