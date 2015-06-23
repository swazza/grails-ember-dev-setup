# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "swazza85"
client_key               "#{current_dir}/swazza85.pem"
validation_client_name   "swazza-validator"
validation_key           "#{current_dir}/swazza-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/swazza"
cookbook_path            ["#{current_dir}/../cookbooks"]
