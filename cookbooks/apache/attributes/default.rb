default["apache_root_group"] = "root"
case node["platform"]
when "debian" || "ubuntu"
    default["package_name"] = "apache2"
    default["service_name"] = "apache2"
    default["document_root"] = "/var/www"
    default["conf_dir"] = "/etc/apache2"
    default["apache_lib_dir"]     = "/usr/lib/apache2"
    default["apache_libexecdir"]  = "/usr/lib/apache2/modules"
when "centos"
    default["package_name"] = "httpd"
    default["service_name"] = "httpd"
    default["document_root"] = "/var/www/html"
    default["conf_dir"] = "/etc/httpd"
    default['apache_lib_dir']     = node['kernel']['machine'] =~ /^i[36]86$/ ? '/usr/lib/httpd' : '/usr/lib64/httpd'
    default['apache_libexecdir']  = "#{node['lib_dir']}/modules"
end
