#
# Cookbook Name:: hello_worldjs
# Recipe:: default
#
# Copyright 2011, Mat Schaffer
#


base = 'c:\node\hello_world'
exe = base + '\server.exe'
service_name = "node_server"

directory base

cookbook_file "#{base}/server.js"

template "#{base}/server.xml" do
  variables :base => base,
            :service_name => service_name
end

remote_file exe do
  source "http://download.java.net/maven/2/com/sun/winsw/winsw/1.9/winsw-1.9-bin.exe"
  not_if { File.exists?(exe) }
end

execute "#{exe} install" do
  cwd home
  only_if { WMI::Win32_Service.find(:first, :conditions => {:name => service_name}).nil? }
end

service service_name do
  action :start
  subscribes :restart, resources(:cookbook_file => "#{base}/server.js")
end