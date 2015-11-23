template '/etc/init/angular.conf' do 
	source 'angular.conf.erb'
	mode '0755'
end

execute 'Start Angular Service' do
	action :nothing
	command 'start angular'
end

execute 'Stop Angular Service' do
	action :nothing
	command 'stop angular'
end