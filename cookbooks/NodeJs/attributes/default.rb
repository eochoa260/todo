
default['NodeJs']['home']['dir'] = '/opt/NodeJs'
default['NodeJs']['angularjs']['dir'] = "#{node['NodeJs']['home']['dir']}/angularjs"
default['NodeJs']['module']['dir'] = "#{node['NodeJs']['home']['dir']}/node_modules"
default['NodeJs']['HTTP']['Port'] = 5000

default['NodeJs']['package']['name'] = 'node-v4.2.1-linux-x64.tar.gz'
default['NodeJs']['package']['url'] = 'https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz' #Create attribute with dynamic name and version

default['NodeJs']['modules'] = ['connect', 'serve-static', 'karma', 'bootstrap']
default['NodeJs']['bootstrap']['modules'] = ['bootstrap.css', 'bootstrap-theme.css']