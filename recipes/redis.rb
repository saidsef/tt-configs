#
# Cookbook Name:: tt-configs
# Recipe:: redis
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

cookbook_file "/etc/redis/redis.conf" do
	source "redis.conf"
	owner "root"
	group "root"
	mode "0644"
	action [ :delete, :create ]
	notifies :reload, "service[redis-server]", :delayed
end

service "redis-server" do
	supports :status => true, :restart => true, :reload => true, :start => true, :stop => true
end