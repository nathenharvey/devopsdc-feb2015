#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package_name = "httpd"
if node["platform"] == "ubuntu"
  package_name = "apache2"
end

service_name = package_name

package "#{package_name}"

service service_name do
  action :start
end
