case node["platform"]
when "debian" || "ubuntu"
    default["package_name"] = "apache2"
    default["service_name"] = "apache2"
    default["document_root"] = "/var/www"
when "centos"
    default["package_name"] = "httpd"
    default["service_name"] = "httpd"
    default["document_root"] = "/var/www/html"
end