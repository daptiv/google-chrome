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

# Add command to path so it can be launched from the command line
windows_path 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' do
  only_if { node['google-chrome']['windows']['add_to_path'] }
  action :add 
end

# Set Chrome as the default web browser
windows_batch 'Make Chrome default browser' do
  only_if { node['google-chrome']['windows']['default_browser'] }
  code <<-EOH
    "%PROGRAMFILES%\\Google\\Chrome\\Application\\chrome.exe" /make-default-browser
  EOH
end
