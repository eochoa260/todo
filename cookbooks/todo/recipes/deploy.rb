cookbook_file '/opt/angular/angularjs/todo.json' do
	source 'todo.json'
	mode '0775'
end

execute 'Move Bootstrap Dependencies' do
	cwd '/opt/angular/node_modules/bootstrap/dist/css'
	command 'cp bootstrap.css /opt/angular/angularjs/; cp bootstrap-theme.css /opt/angular/angularjs/'
	not_if{Dir.exist?('/opt/angular/angularjs/bootstrap.css')}
end

template '/opt/angular/angularjs/todo.html' do
	source 'todo.html.erb'
	mode '0775'
	notifies :run, 'execute[Start Angular Service]', :immediately
end