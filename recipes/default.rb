#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
package_name = "httpd"
if node["platform"] == "ubunutu"
  package_name = "apache"
end

package "#{package_name}" 

# package package_name 

service "httpd" do
  action :start
end
