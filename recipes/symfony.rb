#
# Cookbook Name:: tt-configs
# Recipe:: symfony
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


remote_file "symfony-task.tar.gz" do
	source "https://s3-eu-west-1.amazonaws.com/saidsef-cf-templates/tt/symfony-task-v3.tar.gz"
	owner "root"
	group "root"
	action :create
end

execute "deploy symfony application" do
	command "tar xzvf symfony-task.tar.gz -C /usr/share/nginx/html"
end