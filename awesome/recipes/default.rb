#
# Cookbook Name:: awesome
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'php'
include_recipe 'apache2'

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
  cookbook 'awesome'
  # variables( :config_var => node[:configs][:config_var] )
end
