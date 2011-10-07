# chef-geodjango

A set of recipes to set up all the libraries required to run
[Geo Django](https://docs.djangoproject.com/en/1.3/ref/contrib/gis/)

Use them with your [Chef](http://wiki.opscode.com/display/chef/Home)
instance, or with [Vagrant](http://vagrantup.com/)

Make sure you customize `cookbooks/database/attributes/default.rb`
to use your actual database user and database name.

To try the setup out, do:


	$ git clone https://github.com/flashingpumpkin/chef-geodjango.git
	$ cd chef-geodjango
	$ vagrant up

That'll give you a virtual machine with a database ready to go.