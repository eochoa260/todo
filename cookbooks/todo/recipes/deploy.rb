cookbook_file "#{node['NodeJs']['angularjs']['dir']}/todo.json" do
	source 'todo.json'
	mode '0775'
end

node['NodeJs']['bootstrap']['modules'].each do |modules|
	execute "Move #{modules}" do
		cwd "#{node['NodeJs']['module']['dir']}/bootstrap/dist/css"
		command "cp #{modules} #{node['NodeJs']['angularjs']['dir']}"
		not_if{File.exist?("#{node['NodeJs']['angularjs']['dir']}/#{modules}")}
	end
end

template "#{node['NodeJs']['angularjs']['dir']}/todo.html" do
	source 'todo.html.erb'
	mode '0775'
	notifies :run, 'execute[Start NodeJs Service]', :immediately
end