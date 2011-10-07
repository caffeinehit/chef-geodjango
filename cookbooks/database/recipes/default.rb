
dbuser = node[:database][:dbuser]
dbname = node[:database][:dbname]

bash "create_db" do
	user "postgres"
	code <<-EOH
		createuser --createdb --no-superuser --no-createrole #{dbuser}
		createdb -T template_postgis --owner #{dbuser} #{dbname}
	EOH
end