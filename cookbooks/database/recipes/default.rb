
dbuser = node[:database][:dbuser]
dbname = node[:database][:dbname]

bash "createuser" do
	user "postgres"
	code <<-EOH
		createuser --createdb --no-superuser --no-createrole #{dbuser}
	EOH
	not_if <<-EOH
		su postgres -c "psql -c \\"SELECT * FROM pg_user WHERE usename='#{dbuser}'\\" | grep -c #{dbuser}"
	EOH
end

bash "createdb" do
	user "postgres"
	code <<-EOH
		createdb -T template_postgis --owner #{dbuser} #{dbname}
	EOH
	not_if <<-EOH
		su postgres -c "psql -c \\"SELECT * FROM pg_database WHERE datname='#{dbname}'\\" | grep -c #{dbname}"
	EOH
end
