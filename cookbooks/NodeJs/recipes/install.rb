remote_file "#{node['NodeJs']['home']['dir']}/#{node['NodeJs']['package']['name']}" do
	source node['NodeJs']['package']['url']
	mode '0775'
	notifies :run, 'execute[untar node-v4.2.1-linux-x64]', :immediately
end

execute 'untar node-v4.2.1-linux-x64' do
	action :nothing
	cwd '/opt/NodeJs'
	command "tar xvf #{node['NodeJs']['package']['name']}"
end

node['NodeJs']['modules'].each do |package|
	execute "install #{package}" do
		action :run
		cwd node['NodeJs']['home']['dir']
		command "#{node['NodeJs']['home']['dir']}/node-v4.2.1-linux-x64/bin/npm install #{package}"
		not_if{Dir.exist?("#{node['NodeJs']['module']['dir']}/#{package}")}
	end
end

remote_file "#{node['NodeJs']['angularjs']['dir']}/angular.js" do
	source 'https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.js'
	mode '0775'
end
