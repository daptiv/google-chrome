node.default['google-chrome']['track'] = 'stable'

node.default['google-chrome']['windows']['package_name'] = 'Google Chrome'
node.default['google-chrome']['windows']['url'] =
  'https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi'

node.default['google-chrome']['windows']['checksum'] =
  '5758598caec389a690acc3f29958f3af2cbb087a266f5e151321a477eaba59b4'
 
# Add the command 'chrome' to the environment path for command line execution 
node.default['google-chrome']['windows']['add_to_path'] = true

# Set Google Chrome as the default browser
node.default['google-chrome']['windows']['default_browser'] = true
