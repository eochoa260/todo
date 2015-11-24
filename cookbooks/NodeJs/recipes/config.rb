template "#{node['NodeJs']['home']['dir']}/server.js" do 
	source 'server.js.erb'
	mode '0755'
end

