#
# Cookbook Name:: tt-configs
# Recipe:: nginx
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

cookbook_file "/etc/nginx/sites-available/default" do
	source "nginx-default.conf"
	owner "root"
	group "root"
	mode "0644"
	action [ :delete, :create ]
end

execute "update-web-directory-owner" do
	command "chown www-data:www-data -R /usr/share/nginx"
end

execute "update-web-directory-permission" do
	command "chmod 755 -R /usr/share/nginx"
end

service "nginx" do
	supports :status => true, :restart => true, :reload => true, :start => true, :stop => true
	action [ :enable, :restart ]
end