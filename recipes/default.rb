#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package_name = "httpd"
document_root = "/var/www/html"
if node["platform"] == "ubuntu"
  package_name = "apache2"
  include_recipe "apt::default"
  document_root = "/var/www"
end

service_name = package_name

package package_name

service service_name do
  action :start
end

file "#{document_root}/index.html" do
  content "<h1>Hello, world!</h1>"
  owner "root"
  group "root"
  mode "0644"
end
