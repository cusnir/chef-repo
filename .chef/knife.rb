current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "andreik3"
client_key               "#{current_dir}/andreik3.pem"
validation_client_name   "actest-validator"
validation_key           "#{current_dir}/actest-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/actest"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright "Andrei Cusnir"
cookbook_license "apachev2"
cookbook_email "cusnir@gmail.com"