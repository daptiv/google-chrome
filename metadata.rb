name             'google-chrome'
maintainer       'Daptiv Solutions, LLC'
maintainer_email 'sneal@daptiv.com'
license          'All rights reserved'
description      'Installs/Configures Google Chrome'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version ((IO.read(ver_path) if File.exists?(ver_path)) || '0.0.1').chomp
supports         'windows'
depends          'windows', '>= 1.2.6'
{ "ubuntu" => '12.04', "fedora" => '17.0' }.each do |os, ver|
  supports os, ">= #{ver}"
  case os
  when 'fedora'
    depends 'yum'
  when 'ubuntu'
    depends 'apt'
  end
end
