#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2011, Mat Schaffer
#

version = "0.6.3"
node_installer = "c:\\windows\\temp\\node-v#{version}.msi"

remote_file node_installer do
  source "http://nodejs.org/dist/v0.6.3/node-v0.6.3.msi"
  not_if { File.exists?(node_installer) }
end

execute "install node-v#{version}" do
  command "msiexec /qb /i #{node_installer}"
end