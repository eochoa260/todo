remote_file '/opt/angular/node-v4.2.1-linux-x64.tar.gz' do
	source 'https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz'
	mode '0775'
	notifies :run, 'execute[untar node-v4.2.1-linux-x64]', :immediately
end

execute 'untar node-v4.2.1-linux-x64' do
	action :nothing
	cwd '/opt/angular'
	command 'tar xvf node-v4.2.1-linux-x64.tar.gz'
end

execute 'install connect' do
	action :run
	cwd '/opt/angular'
	command '/opt/angular/node-v4.2.1-linux-x64/bin/npm install connect'
	not_if{Dir.exist?('/opt/angular/node_modules/connect')}
end

execute 'install serve-static' do
	action :run
	cwd '/opt/angular'
	command '/opt/angular/node-v4.2.1-linux-x64/bin/npm install serve-static'
	not_if{Dir.exist?('/opt/angular/node_modules/serve-static')}
end

execute 'install karma' do
	action :run
	cwd '/opt/angular'
	command '/opt/angular/node-v4.2.1-linux-x64/bin/npm install karma'
	not_if{Dir.exist?('/opt/angular/node_modules/karma')}
end

execute 'install bootstrap' do
	action :run
	cwd '/opt/angular'
	command '/opt/angular/node-v4.2.1-linux-x64/bin/npm install bootstrap'
	not_if{Dir.exist?('/opt/angular/node_modules/bootstrap')}
end

remote_file '/opt/angular/angularjs/angular.js' do
	source 'https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.js'
	mode '0775'
end
