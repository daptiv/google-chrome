name 'google-chrome'
maintainer 'Changepoint'
maintainer_email 'heath.snow@changepoint.com'
license 'Apache-2.0'
description 'Installs/Configures Google Chrome'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version File.exist?(ver_path) ? IO.read(ver_path).chomp : '1.0.0'
chef_version '>= 12.5' if respond_to?(:chef_version)
issues_url 'https://github.com/daptiv/google-chrome/issues'
source_url 'https://github.com/daptiv/google-chrome/'
supports 'windows'
depends 'windows', '>= 1.2.6'
{ 'ubuntu' => '12.04', 'fedora' => '17.0' }.each do |os, ver|
  supports os, ">= #{ver}"
  case os
  when 'fedora'
    depends 'yum'
  when 'ubuntu'
    depends 'apt'
  end
end
