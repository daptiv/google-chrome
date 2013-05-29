#
# Cookbook Name:: google-chrome
# Recipe:: windows
#
# Copyright 2013, Daptiv Solutions LLC
#

checksum = node['google-chrome']['windows']['checksum']

windows_package node['google-chrome']['windows']['package_name'] do
	source node['google-chrome']['windows']['url']
  checksum checksum if checksum
  installer_type :msi
	action :install
end
