#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2011, Mat Schaffer
#

version = "0.6.3"

windows_package "Node.js version #{version}" do
  source "http://nodejs.org/dist/v#{version}/node-v#{version}.msi"
  version version
  action :install
end