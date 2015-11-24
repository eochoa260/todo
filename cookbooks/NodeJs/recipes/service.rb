template '/etc/init/nodejs.conf' do 
	source 'nodejs.conf.erb'
	mode '0755'
end

execute 'Start NodeJs Service' do
	action :nothing
	command 'start nodejs'
end

execute 'Stop NodeJs Service' do
	action :nothing
	command 'stop nodejs'
end