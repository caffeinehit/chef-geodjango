
dbname = node[:application][:dbname]
dbuser = node[:application][:dbuser]

bash "create_db" do
	user "postgres"
	code <<-EOH
		createuser #{dbuser}
		createdb #{dbname}
	EOH
end