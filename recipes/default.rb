#
# Cookbook Name:: google-chrome
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

if platform?('windows')
  include_recipe 'google-chrome::windows'
else
  include_recipe 'google-chrome::ubuntu'
end
