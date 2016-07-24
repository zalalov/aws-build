<VirtualHost *:80>
	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/html

	ErrorLog ${APACHE_LOG_DIR}/error.log
	CustomLog ${APACHE_LOG_DIR}/access.log combined

	ProxyPass /admin http://{{ hostvars.localhost.admin_instance.instances[0].private_ip }}
	ProxyPassReverse /admin http://{{ hostvars.localhost.admin_instance.instances[0].private_ip }}

	ProxyPass /	http://{{ hostvars.localhost.blog_instance.instances[0].private_ip }}
	ProxyPassReverse / http://{{ hostvars.localhost.blog_instance.instances[0].private_ip }}
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
