directory '/opt/angular' do
	action :create
	mode '0775'
end

directory '/opt/angular/angularjs' do
	action :create
	mode '0755'
end
