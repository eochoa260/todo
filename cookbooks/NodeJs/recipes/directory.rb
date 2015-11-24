directory node['NodeJs']['home']['dir'] do
	action :create
	mode '0775'
end

directory node['NodeJs']['angularjs']['dir'] do
	action :create
	mode '0755'
end
