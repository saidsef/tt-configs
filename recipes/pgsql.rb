#
# Cookbook Name:: tt-configs
# Recipe:: pgsql
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

cookbook_file "/tmp/pgsql_test_users.sql" do
	source "pgsql_test_users.sql"
	owner "root"
	group "root"
	mode "0644"
	action [ :delete, :create ]
end

execute "pgsql-create-database-test_users-and-table-users" do
	command "/usr/bin/psql -h localhost -U postgres -f /tmp/pgsql_test_users.sql"
end
